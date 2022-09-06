//
//  AwarenessDetails.swift
//  iCare
//
//  Created by WSS on 04/09/2022.
//

import Foundation

// A File about each disease as Guide to it
// Migraine - Epilepsy - MS - Parkinson - ALS
// Anxiety - Depression - PTSD - OCD - Panic Attack

struct AwarenessDetails: Identifiable {
    let id = UUID()
    var name: String
    var title: String
    var cause: String
    var category: String
    var triggers: [String]
    var symptoms: [String]
    var advices: String
    var url: String
    
}
   let AwarenessData = [
//    Neuro Diseases
    AwarenessDetails(name: "Migraine", title: "A migraine is a disabling neurological disease that causes a variety of symptoms on one side of your head",cause: "A Migraine cause is not known, recent research suggests it may be due to a surge of neuronal activity through parts of the brain, which results in the sensation of pain", category: "Migraine Guide", triggers: ["irregular Meals","Specific Food","Physical Factors","Hormonal Changes","Emotional Factors","Environmental Conditions"], symptoms: ["Head pain is moderate or severe","The pain may be on one side of the head or both. It could be in the front or in the back","Your head pain causes a throbbing, pounding, or pulsating sensation","Your head pain gets worse with physical activity or any movement","You experience nausea and/or vomiting","You are sensitive to light, noise and/or smells."],advices: "The first step to living well with the disease is to understand the disease and its progression.", url:"https://americanmigrainefoundation.org"),
//    Migraine 👆🏻
    AwarenessDetails(name: "Epilepsy", title: "Epilepsy is a common condition that affects the brain and causes frequent seizures", cause: "Causes of epilepsy are different for each person, and some people have no identifiable cause", category: "Epilepsy Guide", triggers: ["Stress","Lack Of Sleep","Hormonal Changes"],symptoms: ["Motor symptoms","Non-motor symptoms"],advices: "The first step to living well with the disease is to understand the disease and its progression.", url: "https://www.epilepsy.com"),
//    Epilepsy 👆🏻
    AwarenessDetails(name: "MS", title: "Multiple sclerosis (MS) is a chronic disease affecting the central nervous system (the brain and spinal cord).MS occurs when the immune system attacks nerve fibers and myelin sheathing in the brain and spinal cord.", cause: "n multiple sclerosis, the body’s own immune system attacks the central nervous system (CNS) and causes damage, which slows or stops nerve transmission", category: "MS Guide", triggers: ["Stress","Fatigue","Heat","Diet","Smoking"], symptoms: ["MS Hug (Dysesthesia)","Fatigue","Walking (Gait) Difficulties","Numbness or Tingling","Vision Problems","Vertigo and Dizziness","Cognitive Changes"], advices: "The first step to living well with the disease is to understand the disease and its progression.", url:"https://www.nationalmssociety.org"),
//     MS 👆🏻
    AwarenessDetails(name: "Parkinson's Disease", title: "Parkinson disease (PD) is a degenerative condition of the brain associated with motor symptoms",cause: "The cause remains largely unknown. Scientists believe a combination of genetic and environmental factors is the cause.", category: "Parkinson's Guide", triggers: ["Environmental causes may trigger"], symptoms: ["Tremor","Slowness and paucity of movement","Limb stiffness","Gait and balance problems"], advices: "The first step to living well with the disease is to understand the disease and its progression.", url: "https://www.parkinson.org"),
//     Parkinsons's 👆🏻
    AwarenessDetails(name: "ALS", title: "Amyotrophic lateral sclerosis (ALS) is a rare neurological disease that primarily affects the nerve cells (neurons) responsible for controlling voluntary muscle movement", cause: "The cause of ALS is not known. However, scientific evidence suggests that both genetics and environment play a role", category: "ALS Guide", triggers: ["Environmental causes may trigger"], symptoms: ["Muscle twitches in the arm, leg, shoulder, or tongue","Muscle cramps","Muscle weakness affecting an arm, a leg, the neck","Slurred and nasal speech"],advices: "The first step to living well with the disease is to understand the disease and its progression.", url: "https://www.als.org"),
//   Mental Health
    AwarenessDetails(name: "Anxiety", title: "Group Of Disorders In Which Feelings Of Anxiety or Panic Occur To Cause Problem Coping With Everyday Life",cause: "In Most Cases The Cause Is Not Known, But In Few Cases there may be One", category: "Anxiety Guide", triggers: ["Losing a parent","Neglect","Being bullied or being socially excluded"], symptoms: ["Dizziness","Abdominal Discomfort","Increased Muscle Tension","Chest Pain"], advices: "The first step to living well with the disease is to understand the disease and its progression.", url: "https://adaa.org"),
//   Anxiety 👆🏻
    AwarenessDetails(name: "Depression", title: "Depression is characterized by persistent feelings of intense sadness, hopelessness, and loss of interest in everyday life", cause: "Depression occurs without an obvious cause", category: "Depression Guide", triggers: ["Physical illness","Hormonal Changes During Pregnancy","Side Effect Of Drugs"], symptoms: ["Feeling Unhappy","Loss Of Interest","Persistent Tirdeness","Changes In Appetite And Weight",],advices: "The first step to living well with the disease is to understand the disease and its progression.", url: "https://adaa.org"),
//   Depression 👆🏻
    AwarenessDetails(name: "PTSD", title: "A severe anxiety response can develop after a person is involved in a traumatic event",cause: "Exposure to traumatic event", category: "PTSD Guide", triggers: ["An accident","Major changes in life","Traumatic Event"], symptoms: ["Flashbacks","Nightmares","Emotional Numbness","Loss Of Enjoyment","Memory Problems"], advices: "The first step to living well with the disease is to understand the disease and its progression.", url: ""),
//   PTSD 👆🏻
    AwarenessDetails(name: "OCD", title: "Obsessive-Compulsive Disorder (OCD) is a common chronic disorder in which a person has uncontrollable, reoccurring thoughts and/or behaviors that feels the urge to repeat over and over",cause: "OCD cause is Not Known, But in few cases it may be genetic", category: "OCD Guide", triggers:["Trauma","Life Changes"], symptoms: ["Obsessions","Compulsions","Anxiety"], advices: "The first step to living well with the disease is to understand the disease and its progression.", url: "https://iocdf.org"),
//   OCD 👆🏻
    AwarenessDetails(name: "Panic Attack", title: "Panic disorder is an anxiety disorder where you regularly have sudden attacks of panic or fear", cause: "", category: "Panic Attack \nGuide", triggers: ["life stress","Major changes in life"], symptoms: ["Nausea","Sweating","A racing heartbeat","Numbness or pins and needles","Fear"],advices: "The first step to living well with the disease is to understand the disease and its progression.", url: ""),
   ]
