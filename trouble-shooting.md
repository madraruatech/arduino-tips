## Trouble Shooting your Arduino

Before looking here check out the [connections page](connecting.html) and the [components](components.html) to better understand the various parts.

## What is the problem?

There may be a problem in any of the [components](components.html) that your solution has, namely:

- Your PC to Arduino board connection
- The code you are running on the Arduino board
- The electronic components and their connections (NOT covered here)

## COM port

What is the `COM` port? 

The `COM` port is data communication gateway between your PC and the Arduino board. In order to program the board (from your Arduino IDE), you need to connect your Arduino IDE to the correct `COM` port that your PC is using to communicate with the Arduino board.

The `COM` port can be any number `1 to 256`, however it is usually under `10` - e.g. `COM3` or `COM4`.

---

### Selecting the right COM port

Within the Arduino IDE select `Tools -> Port`:

![](images/COM-port-select.png)

--

## Adding Serial Debug Code

The following code will show you that your code is being executed on the Arduino `board`.

```c
/*    Setup  */ 
void setup() {     
		// Start recording text at the Serial Monitor
		Serial.begin(9600);
		...
}
// the loop function runs over and over again forever
void loop() {
		// The following line will write to the Serial Monitor   
		Serial.println("Turn the light ON...");
		digitalWrite(LED_BUILTIN, HIGH); // turn the LED on (HIGH is the voltage level)
		...
```

--

### Open the Serial Console

![](images/enable-serial-monitor.png)

---

### Serial Monitor Output

![](images/view-serial-monitor.png)

--
