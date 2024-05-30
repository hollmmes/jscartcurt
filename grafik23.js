class tabloVerileri {
  isimler = [];
  degerler = [];

  async bilgiGetir(param = null) {
    this.isimler = [];
    this.degerler = [];
    // herhangi bir değer girilmezse null kabul edilir
    let result = await fetch(
      "bilgigetir/" + (param == null ? "" : `?fn=${param}`)
    );
    let data = await result.json();

    for (let i = 0; i < data.length; i++) {
      if (param == null) {
        this.degerler.push(data[i].satisfiyatlari.split(","));
      } else {
        this.degerler.push(data[i].satisfiyatlari);
      }

      this.isimler.push(data[i].urunadi);
    }
  }



  lineCiz(id) {
    let myChart = echarts.init(document.getElementById(id));

    let option = {
      xAxis: {
        type: "category",
        data: this.isimler,
        axisLabel: {
          interval: 0,
          rotate: 45, // Rotate the labels for better fit
          formatter: function(value) {
            return value.length > 10 ? value.substr(0, 10) + '...' : value;
          }
        }
      },
      yAxis: {
        type: "value",
      },
      tooltip: {
        trigger: 'axis',
        formatter: function(params) {
          let result = params[0].name + '<br/>';
          params.forEach(function(item) {
            result += item.marker + " " + item.seriesName + ": " + item.value + "<br/>";
          });
          return result;
        }
      },
      toolbox: {
        feature: {
          saveAsImage: {},
        },
      },
      series: [
        {
          data: this.degerler,
          type: "line",
          smooth: true,
          name: 'Fiyat'
        },
      ],
    };

    myChart.setOption(option);
}



  yigilmaliCiz(id) {
    var myChart = echarts.init(document.getElementById(id));
    var option = {
      title: {
        text: "",
      },
      tooltip: {
        trigger: "axis",
      },
      /*legend: {
        data: this.isimler,
      },*/
      grid: {
        left: "3%",
        right: "4%",
        bottom: "3%",
        containLabel: true,
      },
      toolbox: {
        feature: {
          saveAsImage: {},
        },
      },
      xAxis: {
        type: "category",
        boundaryGap: false,
        data: ["Pzt", "Sal", "Çrs", "Prş", "Cum"],
      },
      yAxis: {
        type: "value",
      },
      series: [
        {
          name: this.isimler[0],
          type: "line",
          stack: "Total",
          data: this.degerler[0],
        },
        {
          name: this.isimler[1],
          type: "line",
          stack: "Total",
          data: this.degerler[1],
        },
        {
          name: this.isimler[2],
          type: "line",
          stack: "Total",
          data: this.degerler[2],
        },
        {
          name: this.isimler[3],
          type: "line",
          stack: "Total",
          data: this.degerler[3],
        },
        {
          name: this.isimler[4],
          type: "line",
          stack: "Total",
          data: this.degerler[4],
        },
      ],
    };

    myChart.setOption(option);
  }

}
