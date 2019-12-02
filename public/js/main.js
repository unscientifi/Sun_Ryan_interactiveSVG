(() => {
    // try to get the object and do stuff with it
    const seeMoreButtons = document.querySelectorAll('.see-more'),
        popOver = document.querySelector('.popover');
     

    function buildPopover(numdata, el) {
        popOver.querySelector(".programs").textContent = `${numdata.Program}`;
        popOver.querySelector(".requirement").textContent = `Admission Requirement: ${numdata.Requirements}`;
        popOver.querySelector(".grads").textContent = `Graduation Rates: ${numdata.GraduationRates}`;
        popOver.querySelector(".employ").textContent =`Employment Rates: ${numdata.EmploymentRates}`;

        //show the popover
        popOver.classList.add('show-popover');
        el.appendChild(popOver);
    }
    
      // run the fetch API and get the DB data
      function fetchData() {
          let targetEl = this,
          url = `/svgdata/${this.dataset.target}`;

          fetch(url)
          .then(res => res.json())
          .then(data => {
              console.log(data);

              //populate the popover
              buildPopover(data, targetEl);
          })

          .catch((err) => console.log(err));
      }

 const svgGraphic = document.querySelector(".svg-graphic");
      
//  svgGraphic.addEventListener("click", () => {
//      console.log(this);
//  })


 seeMoreButtons.forEach(button => button.addEventListener("click", fetchData));



})();