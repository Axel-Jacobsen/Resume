# Axel Jacobsen - Verbose Resume


## Education

Bachelor's of Applied Science, Engineering Physics, 2022

## Work Experience

### Chan-Zuckergerg Biohub   Mar 2022 - Present

Our team is developing the "RemoScope", a new low-cost instrument to diagnose malaria from blood in less than 20 minutes, from finger to diagnosis. It works by flowing blood past a microscope. We run a neural network on the images of blood which detects malaria parasites. This is opposed to PCR (which is expensive and requires a lab, often only available in large cities), or manual labelling (which requires a human to count each cell individually, more advanced preparation, and is often error-prone in practice).

I am leading development and deployment of the neural networks for the Malaria Scope. The most important model is the diagnosis model, which is an object detector that is used to diagnose and count the blood cells. The network needs to run real-time on limited hardware, so a lightweight model is required. I adapted the design from the YOLO family of models, adapting the design for our domain.

The first is an autofocus model, that is used for focussing the camera continuously throughout the run. The second .

The autofocus model is a simple CNN regressor, and the diagnosis model is derived from the YOLO family of detectors, customized for speed and for our specific problem.

For the YOGO detector, I designed and implemented the labelling workflow. This includes designing the data labelling and training workflow, which is deployed to multiple labellers and created SOTA performance.

The first project that I was working on was on developing software for the OT-2 again. This time, I was writing software that wrapped Opentrons' software, specifically focussed on speeding up protocols and improving reliability.


### Chan-Zuckerberg Biohub    Internship, June 2020 - Dec 2020

For my first internship at the Biohub, I had a major and a minor project.

My major project was rewriting the software for the Opentrons OT-2, which is an open-sourced "liquid handling" robot. That is, it automates pipetting for biologists. We use OT-2s at the Biohub to automate splitting of cell cultures out to secondary plates. This is a manual and time-intensive job, because we also want to split out even amounts of cells to output plates. It was difficult integrating custom instruments (such as a cell counter) with the OT-2, so we wanted to rewrite the software to allow us to get the cell counts. Over the seven months, I alone designed and implemented control software for the OT-2 that could match Opentrons' software, with an architecture that was easily extensible to new labware, custom instruments, and unique pipetting protocols.

The minor project was implementing a driver in Python for a low cost luminometer to detect COVID-19 antigens. The ADC has worked flawlessly in the field for over 200 participants for a study in Bangladesh. Paper is on MedArXiv [here](https://www.medrxiv.org/content/10.1101/2023.05.18.23290120v1.full.pdf)

### Wildlife Computers     Internship, May 2019 – Aug 2019

- Designed an isolator PCB to isolate digital lines from sensitive instruments, allowing accurate low-noise voltage measurements
- Wrote C++ to automatically test and verify component placement on PCBs upon fabrication, increasing production throughput

### Control Mobile, Inc    Internship, Jan 2018 – Apr 2018

- Analyzed and ranked over 300 SQL queries to optimize database runtime, resulting in a 65% reduction in fetch and display time
- Contributed to backend team by fixing bugs, writing new code, and refactoring existing code
