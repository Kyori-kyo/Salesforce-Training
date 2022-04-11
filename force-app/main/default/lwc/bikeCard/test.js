const bike = {
    frontGearIndex: 0,
    rearGearIndex: 0,
    transmission: {
        frontGearTeeth: [30, 45],
        rearGearTeeth: [11, 13, 15, 17, 19, 21, 24, 28, 32, 36]
    
},

calculateGearRatio: function() {
    let front = this.transmission.frontGearTeeth[this.frontGearIndex],
        rear = this.transmission.rearGearTeeth[this.rearGearIndex];
    return (front / rear);
},

changeGear: function(frontOrRear, newValue) {
    if (frontOrRear === 'front') {
        this.frontGearIndex = newValue;
    } else {
        this.rearGearIndex = newValue;
    }
  }
};


//<==I'll be the best, no matter what==>\\