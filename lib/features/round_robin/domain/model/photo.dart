class Photo {
  final String order;

  final String name;
  final String description;
  final String image;
  final double timearrival;
  final double burst;

  final double waittimes;
  final double returntimes;

  
  final String tep;
  final String tepresult;
  final String trp;
  final String trpresult;

  const Photo({
    this.tep, this.tepresult, this.trp, this.trpresult, 
    this.order,
    this.name,
    this.description,
    this.image,
    this.timearrival,
    this.burst,
    this.waittimes,
    this.returntimes,
  });

  static List<Photo> getPhotos() {
    return <Photo>[
      Photo(
          name: "Monochrome",
          image: 'assets/images/bot2.jpeg',
          order: "P1",
          tep: "0+(24-5)",
          tepresult: "19",
          trp: "26 - 0",
          trpresult: "26",
        ),
      Photo(
          name: "Artistic",
          image: 'assets/images/bot3.jpeg',
          order: "P2",
          tep: "(5-1)+(26-10)+(32-31)",
          tepresult: "21",
          trp: "33 - 1",
          trpresult: "32",
        ),
      Photo(
          name: "B&W",
          image: 'assets/images/bot4.jpeg',
          order: "P3",
          tep: "(10-2)+(32-15)",
          tepresult: "25",
          trp: "32 - 2",
          trpresult: "30",
        ),
      Photo(
          name: "Modern",
          image: 'assets/images/bot5.jpeg',
          order: "P4",
          tep: "(15-3)",
          tepresult: "12",
          trp: "19 - 3",
          trpresult: "16",
        ),
      Photo(
          name: "Vintage",
          image: 'assets/images/bot6.jpeg',
          order: "P5",
          tep: "(19-4)",
          tepresult: "15",
          trp: "24 - 4",
          trpresult: "20",
          ),
      Photo(
          order: "TOTAL",
          tep: "",
          tepresult: "18.4",
          trp: "",
          trpresult: "24.8",
          ),
    ];
  }
}
