<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UODA-Student Calendar</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="evo-calendar.min.css">
    <link rel="stylesheet" href="evo-calendar.midnight-blue.min.css">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@700&family=Ubuntu&display=swap" rel="stylesheet">
</head>
<body>
    <div class="hero">
        <div id="calendar"></div>

    </div>


<script src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.min.js"></script>
<script src="evo-calendar.min.js"></script>

<script>

  $(document).ready(function () {
        $('#calendar').evoCalendar({

            calendarEvents: [
               
                {
                    id: 'event1', // Event's ID (required)
                    name: "New Year", // Event name (required)
                    date: "January/1/2022", // Event date (required)
                    description:"NEW YEAR'S DAY",
                    type: "holiday", // Event type (required)
                    everyYear: true // Same event every year (optional)
                },
                {
                    name: "Vacation Leave",
                    badge: "02/13 - 02/15", // Event badge (optional)
                    date: ["February/13/2022", "February/15/2022"], // Date range
                    description: "Vacation leave for 3 days.", // Event description (optional)
                    type: "event",
                    color: "#63d867" // Event custom color (optional)
                },
                 {
                    id: 'event2',
                    name: "Christmas Day",
                    date: ["december/25/2021"], // Date range
                    description: "Christmas is an annual festival commemorating the birth of Jesus Christ.", // Event description (optional)
                    type: "holiday",
                    color:"#189dfc",
                    everyYear: true // Event custom color (optional)
                },

                {
                    id: 'event3',
                    name: "National holiday in Bangladesh",
                    date: ["february/21/2021"], // Date range
                    description: "International Mother Language Day.", // Event description (optional)
                    type: "holiday",
                    color: "#FF0000",
                    everyYear: true // Event custom color (optional)
                },

                {
                    id: 'event4',
                    name: "Victory day",
                    date: ["december/16/2021"], // Date range
                    description: "Victory day of Bangladesh.", // Event description (optional)
                    type: "holiday",
                    color: "#FF0000",
                    everyYear: true // Event custom color (optional)
                },

                {
                    id: 'event5',
                    name: "Independence Day of Bangladesh",
                    date: ["march/26/2021"], // Date range
                    description: "Bangladesh Independence Day.", // Event description (optional)
                    type: "holiday",
                    color: "#FF0000",
                    everyYear: true // Event custom color (optional)
                },

                {
                    id: 'event6',
                    name: "Bengali New Year",
                    date: ["april/14/2021"], // Date range
                    description: "Pôhela Boishakh.", // Event description (optional)
                    type: "event",
                    color: "#1ad918",
                    everyYear: true // Event custom color (optional)
                }
            ]
           
        })
    })


</script>

</body>
</html>