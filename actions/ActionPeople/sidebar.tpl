<div class="block">
    <div class="block-header-conteiner"><h2><span>{$aLang.user_stats}</span></h2></div>

    <ul>
        <li class="stats-all">{$aLang.user_stats_all}: <strong>{$aStat.count_all}</strong></li>
        <li class="stats-active">{$aLang.user_stats_active}: <strong>{$aStat.count_active}</strong></li>
        <li class="stats-noactive">{$aLang.user_stats_noactive}: <strong>{$aStat.count_inactive}</strong></li>
    </ul>

    <br />
    <div id="stats-activity" class="diagram">
    </div>

    <ul>
        <li class="stats-sex-mail">{$aLang.user_stats_sex_man}: <strong>{$aStat.count_sex_man}</strong></li>
        <li class="stats-sex-woman">{$aLang.user_stats_sex_woman}: <strong>{$aStat.count_sex_woman}</strong></li>
        <li class="stats-sex-other">{$aLang.user_stats_sex_other}: <strong>{$aStat.count_sex_other}</strong></li>
    </ul>
    <br />
    <div id="stats-sex" class="diagram">
    </div>
</div>
{literal}
    <script type="text/javascript" src="http://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load('visualization', '1', {packages: ['corechart']});
      function drawVisualization() {
        // Create and populate the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Type');
        data.addColumn('number', 'Count');
        data.addRows(2);
        data.setValue(0, 0, "{/literal}{$aLang.user_stats_noactive}{literal}");
        data.setValue(0, 1, {/literal}{$aStat.count_inactive}{literal});
        data.setValue(1, 0, "{/literal}{$aLang.user_stats_active}{literal}");
        data.setValue(1, 1, {/literal}{$aStat.count_active}{literal});
      
        // Create and draw the visualization.
        new google.visualization.PieChart(document.getElementById('stats-activity')).
          draw(data, {width: 200, height: 200, legend: 'none', chartArea:{left:0,top:0,width:"90%",height:"90%"}, colors:['#999999','#2CB816']});
              
              
              // Create and populate the data table.
        var dataSex = new google.visualization.DataTable();
        dataSex.addColumn('string', 'Type');
        dataSex.addColumn('number', 'Count');
        dataSex.addRows(3);
        dataSex.setValue(0, 0, "{/literal}{$aLang.user_stats_sex_other}{literal}");
        dataSex.setValue(0, 1, {/literal}{$aStat.count_sex_other}{literal});
        dataSex.setValue(1, 0, "{/literal}{$aLang.user_stats_sex_woman}{literal}");
        dataSex.setValue(1, 1, {/literal}{$aStat.count_sex_woman}{literal});
        dataSex.setValue(2, 0, "{/literal}{$aLang.user_stats_sex_man}{literal}");
        dataSex.setValue(2, 1, {/literal}{$aStat.count_sex_man}{literal});
      
        // Create and draw the visualization.
        new google.visualization.PieChart(document.getElementById('stats-sex')).
          draw(dataSex, {width: 200, height: 200, legend: 'none', chartArea:{left:0,top:0,width:"90%",height:"90%"}, colors:['#999999','#E21FA4', '#2F86D7']});
      }
      

      google.setOnLoadCallback(drawVisualization);
    </script>
{/literal}
{insert name="block" block='tagsCountry'}
{insert name="block" block='tagsCity'}