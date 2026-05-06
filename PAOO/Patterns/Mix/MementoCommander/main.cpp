#include <iostream>
#include <string>
#include <vector>
#include <stack>
#include <memory>

// --- MEMENTO ---
// Stores the internal state of the Editor
class Memento {
    std::string state;
public:
    explicit Memento(std::string s) : state(std::move(s)) {}
    std::string getState() const { return state; }
};

// --- ORIGINATOR ---
// The object whose state we want to track
class TextEditor {
    std::string content;
public:
    void setText(const std::string& text) { content = text; }
    std::string getText() const { return content; }

    // Creates a snapshot of the current state
    std::unique_ptr<Memento> save() {
        return std::make_unique<Memento>(content);
    }

    // Restores state from a snapshot
    void restore(const Memento& memento) {
        content = memento.getState();
    }

    void show() const {
        std::cout << "Current Content: \"" << content << "\"" << std::endl;
    }
};

// --- COMMAND INTERFACE ---
class Command {
public:
    virtual ~Command() = default;
    virtual void execute() = 0;
    virtual void undo() = 0;
};

// --- CONCRETE COMMAND ---
// Saves a Memento before execution to allow Undo
class WriteCommand : public Command {
    TextEditor& editor;
    std::string newText;
    std::unique_ptr<Memento> backup;

public:
    WriteCommand(TextEditor& e, std::string t) : editor(e), newText(std::move(t)) {}

    void execute() override {
        backup = editor.save(); // Save state before changing
        editor.setText(newText);
    }

    void undo() override {
        if (backup) {
            editor.restore(*backup);
        }
    }
};

// --- CARETAKER / COMMAND MANAGER ---
class CommandManager {
    std::stack<std::shared_ptr<Command>> undoStack;
    std::stack<std::shared_ptr<Command>> redoStack;

public:
    void executeCommand(std::shared_ptr<Command> cmd) {
        cmd->execute();
        undoStack.push(cmd);
        // Clear redo stack whenever a new action is performed
        while (!redoStack.empty()) redoStack.pop();
    }

    void undo() {
        if (undoStack.empty()) return;
        auto cmd = undoStack.top();
        undoStack.pop();
        cmd->undo();
        redoStack.push(cmd);
    }

    void redo() {
        if (redoStack.empty()) return;
        auto cmd = redoStack.top();
        redoStack.pop();
        cmd->execute();
        undoStack.push(cmd);
    }
};

// --- CLIENT CODE ---
int main() {
    TextEditor myEditor;
    CommandManager manager;

    std::cout << "--- Action: Writing 'Hello' ---" << std::endl;
    manager.executeCommand(std::make_shared<WriteCommand>(myEditor, "Hello"));
    myEditor.show();

    std::cout << "\n--- Action: Writing 'Hello World' ---" << std::endl;
    manager.executeCommand(std::make_shared<WriteCommand>(myEditor, "Hello World"));
    myEditor.show();

    std::cout << "\n--- Performing Undo ---" << std::endl;
    manager.undo();
    myEditor.show();

    std::cout << "\n--- Performing Redo ---" << std::endl;
    manager.redo();
    myEditor.show();

    return 0;
}