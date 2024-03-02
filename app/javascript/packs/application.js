// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require('@rails/ujs').start();
require('turbolinks').start();
require('@rails/activestorage').start();
require('channels');
import $, { data } from 'jquery';

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import Chart from 'chart.js/auto';

document.addEventListener('turbolinks:load', () => {
  (async function () {
    // gonで設定したデータを使用(profiles_contorller.rb)
    const taskData = gon.task_data;

    new Chart(document.getElementById('acquisitions'), {
      type: 'bar',
      data: {
        labels: taskData.map((row) => row.date),
        datasets: [
          {
            label: '学習時間',
            data: taskData.map((row) => row.time),
          },
        ],
      },
    });
  })();
});
