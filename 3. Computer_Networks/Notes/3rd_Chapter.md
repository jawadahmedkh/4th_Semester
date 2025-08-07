# $$\dArr\boxed{\text{What we have Studied in 3rd Chapter}}\dArr$$

## $$\dArr\boxed{\text{Analog Signals (According to Book)}}\dArr$$

Analog signal has infinitely many levels of intensity over a period of time.

![alt text](image.png)

---

## $$\dArr\boxed{\text{Digital Signals (According to Book)}}\dArr$$

A digital signal, on the other hand, can have only a limited number of defined values. Although each value can be any number, it is often as simple as 1 and O.

![alt text](image-1.png)

---

## $$\dArr\boxed{\text{Periodic Signals}}\dArr$$

A periodic signal completes a pattern within a measurable time frame, called a period, and repeats that pattern over subsequent identical periods.

![alt text](image-2.png)

---

## $$\dArr\boxed{\text{Non-Periodic Signals}}\dArr$$

A nonperiodic signal changes without exhibiting a pattern or cycle that repeats over time.

---

## $$\dArr\boxed{\text{Peak Amplitude}}\dArr$$

The peak amplitude of a signal is the absolute value of its highest intensity, proportional to the energy it carries. For electric signals, peak amplitude is normally measured
in volts.

![alt text](image-3.png)

---

## $$\dArr\boxed{\text{Period}}\dArr$$

Period refers to the amount of time, in seconds, a signal needs to complete 1 cycle.

$$T = \frac{1}{f}$$

![alt text](image-4.png)

---

## $$\dArr\boxed{\text{Frequency}}\dArr$$

Period refers to the amount of time, in seconds, a signal needs to complete 1 cycle.

$$f = \frac{1}{T}$$

![alt text](image-5.png)

---

## $$\dArr\boxed{\text{Units of Period and Frequency}}\dArr$$

![alt text](image-6.png)

---

## $$\dArr\boxed{\text{Phase}}\dArr$$

The term phase describes the position of the waveform relative to time O. Phase is measured in degrees or radians [360° is 2n rad; 1° is 2n/360 rad, and 1 rad
is 360/(2n)].

![alt text](image-10.png)

---

## $$\dArr\boxed{\text{Wavelength}}\dArr$$

The distance one cycle occupies on the transmission medium.

$$Wavelength = \text{propagation speed } × \text{period} = \frac{propagations speed}{frequency}$$

---

## $$\dArr\boxed{\text{Composite Signals}}\dArr$$

Composite signals are combination of simple sine waves with different frequencies, amplitudes, and phases.

![alt text](image-11.png)

![alt text](image-12.png)

---

## $$\dArr\boxed{\text{Bandwidth}}\dArr$$

The bandwidth of a composite signal is the difference between the highest and the lowest frequencies contained in that signal.

$$B = fh - fl$$

![alt text](image-13.png)

---

## $$\dArr\boxed{\text{Bit Rate}}\dArr$$

The bit rate is the number of bits sent in Is, expressed in bits per second (bps).

$$
\text{Bitrate} = \text{Pages per Minute} \times \text{Lines per Page} \times \text{Characters per Line} \times \text{Bits per Character}
$$

---

## $$\dArr\boxed{\text{Bit Length}}\dArr$$

The bit length is the distance one bit occupies on the transmission medium.

$$Bit length = \text{propagation speed} \times \text{bit duration}$$

---

## $$\dArr\boxed{\text{Baseband Transmission}}\dArr$$

Baseband transmission means sending a digital signal over a channel without changing the digital signal to an analog signal.

![alt text](image-19.png)

---

## $$\dArr\boxed{\text{Broadband Transmission (Using Modulation)}}\dArr$$

Broadband transmission or modulation means changing the digital signal to an analog
signal for transmission.

---

## $$\dArr\boxed{\text{Attenuation}}\dArr$$

Attenuation means a loss of energy. When a signal, simple or composite, travels through a medium, it loses some of its energy in overcoming the resistance of the medium.

![alt text](image-20.png)

---

## $$\dArr\boxed{\text{Decibel}}\dArr$$

To show that a signal has lost or gained strength, engineers use the unit of the decibel. The decibel (dB) measures the relative strengths of two signals or one signal at two different points. Note that the decibel is negative if a signal is attenuated and positive if a signal is amplified.

$$dB = 10log_{10}\frac{P2}{P1}$$

---

## $$\dArr\boxed{\text{Distortion}}\dArr$$

Distortion means that the signal changes its form or shape. Distortion can occur in a composite signal made of different frequencies. Each signal component has its own propagation speed  through a medium and, therefore, its own delay in arriving at the final destination.

![alt text](image-23.png)

---

## $$\dArr\boxed{\text{Noise}}\dArr$$

Noise is another cause of impairment. Several types of noise, such as thermal noise, induced noise, crosstalk, and impulse noise, may corrupt the signal. **Thermal noise** is the random motion of electrons in a wire which creates an extra signal not originally sent by the transmitter. **Induced noise** comes from sources such as motors and appliances. **Crosstalk** is the effect of one wire on the other. One wire acts as a sending antenna and the other as the receiving antenna. Impulse noise is a spike (a signal with high energy in a very short time) that comes from power lines, lightning, and so on.

![alt text](image-24.png)

---

## $$\dArr\boxed{\text{Signal-to-Noise Ratio (SNR)}}\dArr$$

As we know that, to find the theoretical bit rate limit, we need to know the ratio of
the signal power to the noise power. The signal-to-noise ratio is defined as

$$SNR = \frac{average signal power}{average noise power}$$

Because **SNR** is the ratio of two powers, it is often described in decibel units,
$$SNR_{dB}$$ defined as

$$SNR_{dB} = 10log_{10}SNR$$

---

## $$\dArr\boxed{\text{Noiseless Channel: Nyquist Bit Rate}}\dArr$$

For a noiseless channel, the Nyquist bit rate formula defines the theoretical maximum
bit rate

$$BitRate = 2 \times bandwidth \times \log_2L$$

In this formula, bandwidth is the bandwidth of the channel, L is the number of signal
levels used to represent data, and BitRate is the bit rate in bits per second.

---

## $$\dArr\boxed{\text{Noisy Channel: Shannon Capacity}}\dArr$$

In reality, we cannot have a noiseless channel; the channel is always noisy. In 1944,
Claude Shannon introduced a formula, called the Shannon capacity, to determine the
theoretical highest data rate for a noisy channel:

$$Capacity = bandwidth \times log_2(1 + SNR)$$

---

## $$\dArr\boxed{\text{Throughput}}\dArr$$

The throughput is a measure of how fast we can actually send data through a network.

---

## $$\dArr\boxed{\text{Propagation Time}}\dArr$$

Propagation time measures the time required for a bit to travel from the source to the
destination.

$$Propagation time = \frac{Distance}{Propagation Speed}$$

---

## $$\dArr\boxed{\text{Latency (Delay)}}\dArr$$

The latency or delay defines how long it takes for an entire message to completely
arrive at the destination from the time the first bit is sent out from the source. We can
say that latency is made of four components: propagation time, transmission time,
queuing time and processing delay.

$$Latency = \text{propagation time }+ \text{transmission time} + \text{queuing time }+ \text{processing delay}$$

---

## $$\dArr\boxed{\text{Transmission Time}}\dArr$$

The time required for transmission of a
message.

$$\text{Transmission time} = \frac{Message Size}{Bandwidth}$$

---

## $$\dArr\boxed{\text{Jitter}}\dArr$$

**Jitter** is a problem if different packets of data encounter different delays and the application using the data at the receiver site is time-sensitive (audio and video data, for example).
If the delay for the first packet is 20 ms, for the second is 45 ms, and for the third is 40 ms, then the real-time application that uses the packets endures jitter.

---

$$\boxed{\color{cyan}{\alef}}$$