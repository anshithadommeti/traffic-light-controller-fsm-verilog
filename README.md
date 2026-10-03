# Traffic Light Controller using FSM

## 📌 Project Overview

This project implements a simple traffic light controller using a **Finite State Machine (FSM)** in Verilog.

The controller operates in three states:

* 🔴 RED
* 🟢 GREEN
* 🟡 YELLOW

The sequence is:

**RED → GREEN → YELLOW → RED**

## 🛠️ Tools Used

* Verilog/SystemVerilog
* EDA Playground
* Icarus Verilog
* EPWave

## 🔹 FSM States

| State  | Encoding | Output    |
| ------ | -------- | --------- |
| RED    | `00`     | Red ON    |
| GREEN  | `01`     | Green ON  |
| YELLOW | `10`     | Yellow ON |

## 🔹 Design

The design consists of:

1. **State Register** – stores the current state.
2. **Next-State Logic** – determines the next state.
3. **Output Logic** – controls the traffic light outputs.

## 🔹 State Transition

```text
       ┌────────┐
       │  RED   │
       └───┬────┘
           ↓
       ┌────────┐
       │ GREEN  │
       └───┬────┘
           ↓
       ┌────────┐
       │ YELLOW │
       └───┬────┘
           │
           └──────→ RED
```

## 🧪 Simulation

The testbench generates the clock, applies reset, and verifies the state transitions and traffic light outputs.

The waveform confirms the correct sequence:

```text
RED → GREEN → YELLOW → RED
```

## 📊 Waveform

![Traffic Light Waveform](traffic_light_waveform.png)

## 🎯 Learning Outcomes

* Understanding Finite State Machines
* Implementing Moore FSMs in Verilog
* Understanding current-state and next-state logic
* Writing a Verilog testbench
* Simulating and verifying RTL designs using waveforms
