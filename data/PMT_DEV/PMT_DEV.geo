{
name: "GEO",
index: "world",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "", // world volume has no mother
type: "box",
size: [1000.0, 1000.0, 1000.0], // mm, half-length
material: "air", //rock?
invisible: 1,
}

{
name: "GEO",
index: "inner_pmts",
enable: 1,
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "world",
type: "pmtarray",
end_idx: 0, //idx of the last pmt
start_idx: 0, //idx of the first pmt
pmt_model: "r3600",
mu_metal: 0,
pmt_detector_type: "idpmt",
sensitive_detector: "/mydet/pmt/inner",
efficiency_correction: 0.90000,
pos_table: "PMTINFO", //generated by positions.nb
orientation: "manual",
color: [0.3,0.5, 0.0, 0.7],
}
