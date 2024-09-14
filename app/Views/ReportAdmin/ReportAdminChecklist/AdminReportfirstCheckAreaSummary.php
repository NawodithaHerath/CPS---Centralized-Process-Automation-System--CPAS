<div class="container">
    <div class="col-12 col-sm-12 offset-sm-12 col-md-12 mt-1 pt-3 pb-3 bg-white from-wrapper " >
        <div class="countainer" style="  border: 1px solid; padding: 10px; box-shadow: 5px 10px 18px #888888;">
        <h5 style=" border: 1px solid; padding: 10px;">All First Sub check Areas</h5>
            <hr style="height:2px;border-width:0;color:gray;background-color:gray">

            <Div><h5> ID -: <?= $mainarea_id;?></h5></Div> 
            <Div><h5> Description -: <?=  $maincheckarea['mainarea_description']; ?></h5></Div> 

            <div><p>To export data into the excel file</p><a href="<?= base_url('/Development/development/public/ReportAdminChecklistFirstSubExcelExport/'.$mainarea_id)?>" class="btn btn-success">Export into Excel</a> </div>
            <a href="<?= base_url('/Development/development/public/ReportAdminAllChecklistMainSub/'.$maincheckarea['checklist_id'])?>" class="btn btn-secondary float-right">Back</a>

            <div class="row">
                <div class="col-6 col-sm-3 text-left mt-3 ">
                <label for="myInput " class="fw-bold" >Search from ID</label>
                <input class="form-control input-lg border-primary" type="text" id="myInput1" onkeyup="myFunction1()" placeholder="Search for ID.." title="Type in a name">
                </div>
                <div class="col-6 col-sm-3 text-left mt-3 ">
                <label for="myInput1 " class="fw-bold" >Seach from Description</label> 
                <input class="form-control input-lg border-primary" type="text" id="myInput2" onkeyup="myFunction2()" placeholder="Search for Description.." title="Type in a name">
                </div>
            </div>

            <table class="table" id= myTable>
            <thead>
                <tr>
                <th scope="col">First Sub Check Area ID</th>
                <th scope="col">First Sub Check Area Description</th>
                <th scope="col">Created By</th>
                </tr>
            </thead>
            <tbody>
                <?php if($firstsubarea):?>
                    <?php foreach($firstsubarea as $row): ?>
                <tr>
                <td scope="row" ><?php echo $row['firstsubarea_id'];?> </td>
                <td><?php echo $row['firstsubarea_description'];?> </td>
                <td><?php echo $row['FirstName'];?> </td>
                <td><a href="<?= base_url('/Development/development/public/ReportAdminCheckingItem/'.$row['firstsubarea_id']); ?>" class="btn btn-secondary">Checking Item</a></td>
                </tr>
                <?php endforeach; ?>    
                <?php endif; ?>
            </tbody>
            </table>

        </div>
    </div>    
</div>

<script>
        function myFunction1() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("myInput1");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0];
            if (td) {
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
            }       
        }
        }

        function myFunction2() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("myInput2");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[1];
            if (td) {
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
            }       
        }
        }

</script>