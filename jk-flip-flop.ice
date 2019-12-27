{
  "version": "1.2",
  "package": {
    "name": "jk-flip-flop",
    "version": "0.1",
    "description": "Flip - flop JK",
    "author": "Diego Harosteguy @vascodh",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "12452b38-28a4-4452-836e-a562a413fef4",
          "type": "basic.output",
          "data": {
            "name": "q",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 752,
            "y": 32
          }
        },
        {
          "id": "95aab5f4-5e73-4c5b-b7ad-b18cfce8831c",
          "type": "basic.input",
          "data": {
            "name": "j",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 0,
            "y": 104
          }
        },
        {
          "id": "9676f056-a38c-4dab-a0ba-a12e27418d73",
          "type": "basic.output",
          "data": {
            "name": "¬q",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 752,
            "y": 168
          }
        },
        {
          "id": "d532a3b6-dcad-4133-af0f-697f630bcd33",
          "type": "basic.input",
          "data": {
            "name": "k",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 0,
            "y": 176
          }
        },
        {
          "id": "b84fd978-32ef-4606-a7b8-2db8e8c201e4",
          "type": "basic.code",
          "data": {
            "code": "reg q;\n\nalways @(negedge clk)\n case ({j,k})\n   2'b11: q <= ~q; //Cambio\n   2'b01: q <= 1'b0; //Reset\n   2'b10: q <= 1'b1; //Set\n   2'b00: q <= q; \n endcase\n   ",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "j"
                },
                {
                  "name": "k"
                }
              ],
              "out": [
                {
                  "name": "q"
                }
              ]
            }
          },
          "position": {
            "x": 160,
            "y": 24
          },
          "size": {
            "width": 336,
            "height": 216
          }
        },
        {
          "id": "f5706035-038c-4e44-8b8b-ff67bf18f315",
          "type": "35f267d0df6ffcb7fc33753bc9df9cf083642cca",
          "position": {
            "x": 592,
            "y": 168
          },
          "size": {
            "width": 96,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "95aab5f4-5e73-4c5b-b7ad-b18cfce8831c",
            "port": "out"
          },
          "target": {
            "block": "b84fd978-32ef-4606-a7b8-2db8e8c201e4",
            "port": "j"
          }
        },
        {
          "source": {
            "block": "d532a3b6-dcad-4133-af0f-697f630bcd33",
            "port": "out"
          },
          "target": {
            "block": "b84fd978-32ef-4606-a7b8-2db8e8c201e4",
            "port": "k"
          }
        },
        {
          "source": {
            "block": "b84fd978-32ef-4606-a7b8-2db8e8c201e4",
            "port": "q"
          },
          "target": {
            "block": "12452b38-28a4-4452-836e-a562a413fef4",
            "port": "in"
          },
          "vertices": [
            {
              "x": 560,
              "y": 88
            }
          ]
        },
        {
          "source": {
            "block": "f5706035-038c-4e44-8b8b-ff67bf18f315",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "9676f056-a38c-4dab-a0ba-a12e27418d73",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b84fd978-32ef-4606-a7b8-2db8e8c201e4",
            "port": "q"
          },
          "target": {
            "block": "f5706035-038c-4e44-8b8b-ff67bf18f315",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          },
          "vertices": [
            {
              "x": 560,
              "y": 184
            }
          ]
        }
      ]
    }
  },
  "dependencies": {
    "35f267d0df6ffcb7fc33753bc9df9cf083642cca": {
      "package": {
        "name": "NOT",
        "version": "1.0.3",
        "description": "Puerta NOT",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22317.651%22%20height=%22194.058%22%20version=%221%22%3E%3Cpath%20d=%22M69.246%204l161.86%2093.027-161.86%2093.031V4z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20cx=%22253.352%22%20cy=%2296.736%22%20rx=%2221.393%22%20ry=%2221.893%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2097.49h65.262m205.796%200h38.48%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2281.112%22%20y=%22111.734%22%20transform=%22scale(.99532%201.0047)%22%20font-weight=%22400%22%20font-size=%2249.675%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2281.112%22%20y=%22111.734%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ENot%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 144
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 752,
                "y": 144
              }
            },
            {
              "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
              "type": "basic.code",
              "data": {
                "code": "//-- Puerta NOT\n\n//-- module (input wire a, output wire c);\n\n\nassign c = ~a;\n\n\n//-- endmodule\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              },
              "size": {
                "width": 400,
                "height": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}