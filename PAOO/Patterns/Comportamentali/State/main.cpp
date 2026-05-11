#include <iostream>
#include <string>
#include <filesystem>
#include <optional>
#include <memory>
#include <typeinfo>
#include <thread>
#include <chrono>

// Light can be in different states
class ALightState{
public:
    virtual void powerOn() = 0;
    virtual void powerOff() = 0;
    virtual void battery50P() = 0;
    virtual std::string toString() = 0;
};

// Context
class RobotHeadLight {
public:
    std::shared_ptr<ALightState> state;
    RobotHeadLight(std::shared_ptr<ALightState> init_state) : state{init_state} {};
    void setState(std::shared_ptr<ALightState> new_state) {
        state = new_state;
    }

    void powerOn(){
        state->powerOn();
    }
    void powerOff() {
        state->powerOff();
    }
    void battery50P(){
        state->battery50P();
    }
};

// Different States
class OffState : public ALightState {
    std::shared_ptr<RobotHeadLight> context;
public:
    void setContext(std::shared_ptr<RobotHeadLight> new_context) {
        context = new_context;
    }

    virtual void powerOn() override;
    virtual void powerOff() override;
    virtual void battery50P() override;
    virtual std::string toString() override;
};

class PulsingState : public ALightState {
    std::shared_ptr<RobotHeadLight> context;
public:
    void setContext(std::shared_ptr<RobotHeadLight> new_context) {
        context = new_context;
    }
    void powerOn() override;
    void powerOff() override;
    void battery50P() override;
    virtual std::string toString() override;
};

class FastPulsingState  : public ALightState {
    std::shared_ptr<RobotHeadLight> context;
public:
    void setContext(std::shared_ptr<RobotHeadLight> new_context) {
        context = new_context;
    }
    void powerOn() override;
    void powerOff() override;
    void battery50P() override;
    virtual std::string toString() override;
};

class OnState : public ALightState {
    std::shared_ptr<RobotHeadLight> context;
public:
    void setContext(std::shared_ptr<RobotHeadLight> new_context) {
        context = new_context;
    }
    void powerOn() override;
    void powerOff() override;
    void battery50P() override;
    virtual std::string toString() override;
};

// Off State
void OffState::powerOn() {
    auto new_state = std::make_shared<OnState>();
    context->setState(new_state);
    new_state->setContext(context);
}

void OffState::powerOff() {
    // Do nothing
}

void OffState::battery50P() {
    auto new_state = std::make_shared<PulsingState>();
    context->setState(new_state);
    new_state->setContext(context);
}
std::string OffState::toString() {
    return "OffState";
}

// Pulsing State
void PulsingState::powerOn() {
    // Do nothing
}

void PulsingState::powerOff() {
    auto new_state = std::make_shared<OffState>();
    context->setState(new_state);
    new_state->setContext(context);
}

void PulsingState::battery50P() {
    // Do nothing
}
std::string PulsingState::toString() {
    return "PulsingState";
}

// FastPulsing State
void FastPulsingState::powerOn() {
    // Do nothing
}

void FastPulsingState::powerOff() {
    auto new_state = std::make_shared<OffState>();
    context->setState(new_state);
    new_state->setContext(context);
}

void FastPulsingState::battery50P() {
    auto new_state = std::make_shared<PulsingState>();
    context->setState(new_state);
    new_state->setContext(context);
}
std::string FastPulsingState::toString() {
    return "FastPulsingState";
}

// On State
void OnState::powerOn() {
    // Do nothing
}

void OnState::powerOff() {
    auto new_state = std::make_shared<OffState>();
    context->setState(new_state);
    new_state->setContext(context);
}

void OnState::battery50P() {
    auto new_state = std::make_shared<PulsingState>();
    context->setState(new_state);
    new_state->setContext(context);
}

std::string OnState::toString() {
    return "OnState";
}

int main() {
    auto init_state = std::make_shared<OffState>();
    std::shared_ptr<RobotHeadLight> context = std::make_shared<RobotHeadLight>(init_state);
    init_state->setContext(context);
    
    std::cout << context->state->toString() << std::endl;
    context->battery50P();
    std::cout << context->state->toString() << std::endl;
    context->powerOff();
    std::cout << context->state->toString() << std::endl;
    context->battery50P();
    std::cout << context->state->toString() << std::endl;
}

