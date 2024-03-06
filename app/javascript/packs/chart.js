import Chart from 'chart.js/auto';

document.addEventListener('DOMContentLoaded', () => {
  (async function () {
    // gonで設定したデータを使用(profiles_contorller.rb)
    const taskData = gon.task_data;

    new Chart(document.getElementById('acquisitions'), {
      type: 'bar',
      data: {
        labels: taskData.map((row) => row.date),
        datasets: [
          {
            label: '学習時間(分)',
            data: taskData.map((row) => row.time),
          },
        ],
      },
    });
  })();
});
