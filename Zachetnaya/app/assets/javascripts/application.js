// // This is a manifest file that'll be compiled into application.js, which will include all the files
// // listed below.
// //
// // Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// // vendor/assets/javascripts directory can be referenced here using a relative path.
// //
// // It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// // compiled file. JavaScript code in this file should be added after the last require_* statement.
// //
// // Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// // about supported directives.
// //
// //= require jquery3
// //= require bootstrap
// //= require bootstrap-material-design
// //= require rails-ujs
// //= require rails-ujs
// //= require turbolinks
// //= require_tree .
//
//
// function show_result(data) {
//     var result = document.getElementById("results");
//     result.innerText = '';
//     // var header = document.createElement('h1');
//     // result.appendChild(header);
//     //
//     // if (data.error == true)
//     // {
//     //     header.innerHTML = `Ошибка формата входных данных.`;
//     //     result.appendChild(header);
//     //     return;
//     // }
//
//     var header = document.createElement('span');
//     // language=HTML
//     header.innerHTML = "<h1>Вы ввели:</h1><br/><br/>";
//     header.style.cssText = "display: inline-block;\
//             padding: 0.25em 0.4em;\
//             font-size: 75%;\
//             font-weight: 700;\
//             line-height: 1;\
//             text-align: center;\
//             white-space: nowrap;\
//             vertical-align: baseline;\
//             border-radius: 0.25rem;";
//     result.appendChild(header);
//     // if (data.error == true)
//     // {
//     //     header.innerHTML = `Ошибка формата входных данных.`;
//     //     result.appendChild(header);
//     //     return;
//     // }
//
//
//
// }
//
//
//
// $(document).ready(function ()
// {
//     $('#Here').bind("ajax:success", function (xrs)
//     {
//         show_result(xrs.detail[0]);
//         //console.log(xrs.detail[0]);
//     })
// });