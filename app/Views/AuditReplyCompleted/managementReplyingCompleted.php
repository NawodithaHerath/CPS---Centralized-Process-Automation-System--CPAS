
<div class="container">
    <div class="col-12 col-sm-12 offset-sm-12 col-md-12 mt-1 pt-1 pb-1 bg-white from-wrapper " >
        <div class="countainer" style="  border: 1px solid; padding: 10px; box-shadow: 5px 10px 18px #888888;">
        <h4 style=" border: 1px solid; padding: 10px; background-color:DarkRed; color:white">Completed Management Reply</h4>
            <hr style="height:2px;border-width:0;color:gray;background-color:gray">
            <div class="countainer" style="  border: 1px solid; padding: 10px; box-shadow: 5px 10px 18px #888888;">
            <div class="card-body ps-5">


            <?php if(session()->get('success')):?>
                <div class="alert alert-success mt-2" role="alert">
                    <?= session()->get('success') ?>
                </div>
                <?php endif; ?>

            <?php if(session()->get('alert')):?>
                <div class="alert alert-warning mt-2" role="alert">
                    <?= session()->get('alert') ?>
                </div>
                <?php endif; ?>
                
                <?php if($postdata['replyStatus']=='Submit for review'):?>
                <div class="alert alert-warning mt-2" role="alert">
                    <h6>Management Reply Status : <?= $postdata['replyStatus'] ?> </h6>
                </div>
                <?php endif; ?>

            <form name="commentformreply" id="commentformreply" action="/Development/development/public/CommentReplyingReview/<?php echo $commentdetails['comment_id'];?>" onsubmit="return " method="post">
            <div class="container border">
                    <div class="col-4 col-sm-4 fw-bold text-left">
                            <label for="ManagerResponse" >Manager Response</label> 
                            <select name="ManagerResponse" class="form-control input-lg form-select" id="ManagerResponse" disabled >
                                <option value="<?php if($postdata['ManagerResponse']==''){echo "";}else{echo $postdata['ManagerResponse'];}?>"> <?php if($postdata['ManagerResponse']==''){echo "Select Manager Response"; }else{echo $postdata['ManagerResponse'];}?></option>
                                <option value="Agree">Agree</option>
                                <option value="Not Agree">Not Agree</option>
                            </select>
                    </div> 
                <div class="form-group mt-4">
                    <label  class=" h6" for="replyDetails" >Manager Reply Details</label>
                        <div class="form-group">
                        <textarea name="replyDetails" id="replyDetails" disabled ><?php if(isset($postdata)){echo $postdata['replyDetails'];}else{echo "";}?></textarea>
                        </div>
                </div>

                <div class="form-group mt-1">
                        <label for="responsiblePerson " class="fw-bold" >Responsible Officer</label>
                            <select name="responsiblePerson" class="form-control input-lg form-select" id="responsiblePerson" disabled >
                            <option value="<?php if($postdata['ManagerResponse']==''){echo "";}else{echo $postdata['responsiblePerson'];}?>"> <?php if($postdata['responsiblePerson']==''){echo "Select responsible person";}else{echo $responsiblePerson['EmpNo'].'-'.$responsiblePerson['FirstName']." ".$responsiblePerson['LastName'];}?></option>
                            <?php if($entityusers):?>
                                    <?php foreach($entityusers as $row): ?>
                                <option value="<?php echo $row['EmpNo'];?>"><?php echo $row['EmpNo'];?> - <?php echo $row['FirstName'].' '.$row['LastName'];?> </option>
                                <?php endforeach; ?>    
                                <?php endif; ?>
                            </select>
                        </div>


                    <style>.hidden {display: none;}</style>
                    <div class="row m-1">
                        <div>
                        <label  class="col-12 col-sm-6 fw-bold" for="rectification">Reactification Details</label></div>
                        <div class="col-12 col-sm-6 fw-bold mb-3">
                        <select name="rectification"  class="form-control input-lg form-select" id="rectification" onchange="reactificationstatus()" disabled>
                            <option value="<?php if($postdata['rectification']==''){echo ""; }else{echo $postdata['rectification'];}?>"> <?php if($postdata['rectification']==''){echo "Select rectification status"; }else{echo  $postdata['rectification'];}?></option>
                            <option value="Rectified">Rectified</option>
                            <option value="Not Rectified">Not Rectified</option>
                        </select>
                         </div>
                         <input class="hidden" type="text" value="" id="rectificationstatus" name="rectificationstatus">

                        <div id="rectifiedDate" class="hidden">
                            <div class="col-12  fw-bold">
                            <label class="col-12 col-sm-6 fw-bold" for="rectifiedDate">Select Rectified Date:</label>
                            <input class="form-control" type="date" id="rectifiedDate" name="rectifiedDate" value="<?php if(isset($postdata)){echo $postdata['rectifiedDate'];}else{echo "";}?>" disabled >
                                <div class="form-group" >
                                <label class="col-12 col-sm-6 fw-bold" for="rectificationAction">Action taken for rectification</label>
                                <textarea class="form-control" id="rectificationAction" name="rectificationAction" rows="2"  disabled   ><?php if(isset($postdata)){echo $postdata['rectificationAction'];}else{echo "";}?></textarea>
                                </div>
                            </div>
                        </div>

                        <div id="targetDate" class="hidden">
                            <div class="col-12  fw-bold">
                            <label class="col-12 col-sm-6 fw-bold" for="rectificationTargetDate">Select  Rectification Target Date:</label>
                            <input  class="form-control" type="date" id="targetDateInput" name="rectificationTargetDate" value="<?php if(isset($postdata)){echo $postdata['rectificationTargetDate'];}else{echo "";}?>"  disabled >
                            </div>
                        </div>
                    </div> 

                <div class="row m-1 fw-bold" >
                        <label for="rootcause " class="fw-bold">Root Cause</label>
                        <input class="hidden" type="text" value="" id="rootcause" name="rootcause">
                        <div class="col-12 col-sm-2 text-center">
                            <input class="form-check-input-lg"  type="checkbox" value="HR" id="HR" name="HR" disabled >
                            <label class="form-check-label" for="HR">HR</label>
                        </div>
                        <div class="col-12 col-sm-2 text-center">
                            <input class="form-check-input-lg" type="checkbox" value="IT" id="IT" name="IT" disabled >
                            <label class="form-check-label" for="IT">IT</label>
                        </div>
                        <div class="col-12 col-sm-2 text-center">
                            <input class="form-check-input-lg" type="checkbox" value="Execution" id="Execution" name="Execution" disabled >
                            <label class="form-check-label" for="Execution">Execution</label>
                        </div>
                        <div class="col-12 col-sm-2 text-center">
                            <input class="form-check-input-lg" type="checkbox" value="Process" id="Process" name="Process" disabled >
                            <label class="form-check-label" for="Process">Process</label>
                        </div>
                        <div class="col-12 col-sm-2 text-center">
                            <input class="form-check-input-lg" type="checkbox" value="Policies" id="Policies" name="Policies" disabled >
                            <label class="form-check-label" for="Policies">Policies</label>
                        </div>
                </div>
                    <div class="form-group" >
                    <label class="col-12 col-sm-6 fw-bold" for="rootcauseDetails"  >Details for Root Cause</label>
                        <textarea class="form-control m-1" id="rootcauseDetails" name="rootcauseDetails" rows="2" disabled> <?php if(isset($postdata)){echo $postdata['rootcauseDetails'];}else{echo "";}?></textarea>
                </div>

            </div>
            <div class="container border mt-1">         
                    <div class="row m-1">
                            <div class="col-12 col-sm-3 text-center">
                                <a class="btn btn-secondary col-9" href="/Development/development/public/allCommentReplyingCompleted/<?= $commentdetails['auditid'] ?>">Back</a>
                            </div>
                    </div> 

                </div> 
            </form>
            </div>
        </div>
        </div>
    </div>
</div>    

<!-- <script>

 window.onload =   onPageLoad;
 
    function onPageLoad() {
        reactificationstatus();
        }
  
</script> -->

<!-- <script src="https://cdn.ckeditor.com/ckeditor5/40.0.0/classic/ckeditor.js"></script> -->
<script src="https://cdn.ckeditor.com/4.22.1/standard/ckeditor.js"></script>
<script> CKEDITOR.replace( 'replyDetails' ); </script>
<!-- <script> CKEDITOR.replace( 'recommendation' ); </script> -->

<!-- <script>
    ClassicEditor
    .create( document.querySelector( '#commentdetails' ) )
    .then( editor => {
    console.log( editor );
    } )
    .catch( error => {
    console.error( error );
    } );

</script> -->

</script>


<script>
        function reactificationstatus() {
            var status = document.getElementById("rectification").value;
            var rectifiedDate = document.getElementById("rectifiedDate");
            var targetDate = document.getElementById("targetDate");

            if (status === "Rectified") {
                rectifiedDate.classList.remove("hidden");
                targetDate.classList.add("hidden");
            } else if(status === "Not Rectified"){
                rectifiedDate.classList.add("hidden");
                targetDate.classList.remove("hidden");
            }else{
                rectifiedDate.classList.add("hidden");
                targetDate.classList.add("hidden"); 
            }
        }
</script>

<script>
    function validatemanagerreplyform(){
        validateManagerResponse();
    }


    function validateManagerResponse() { 
        let ManagerResponse = document.forms["commentformreply"]["ManagerResponse"].value;
        if (ManagerResponse == "" ) {
            alert("Manager Response should be selected");
            return false;
        }
    }

    function validatereplyDetails() { 
        let replyDetails = document.forms["commentformreply"]["replyDetails"].value;
        if (replyDetails == "" ) {
            alert("Reply Details should be added");
            return false;
        }
    }

    function validateresponsiblePerson() { 
        let responsiblePerson = document.forms["commentformreply"]["responsiblePerson"].value;
        if (responsiblePerson == "" ) {
            alert("Responsible Person should be selected");
            return false;
        }
    }
    function validaterectification() { 
        let rectification = document.forms["commentformreply"]["rectification"].value;
        if (rectification == "" ) {
            alert("Rectification status should be selected");
            return false;
        }
    }

    function validatereactifieddate(){
        let rectification = document.forms["commentformreply"]["rectification"].value;
        let rectifiedDate = document.forms["commentformreply"]["rectifiedDate"].value;
        if(rectification == `Rectified` &&  rectifiedDate==''){ 
            alert("Rectified date should added");
            return false;
        }

    }

    

</script>

<!-- <script>
    function validateFormTargetdate() {
    let reactificationstatus = document.forms["commentformreply"]["rectification"].value;
    let reactifieddate = document.forms["commentformreply"]["targetdate"].value;
    let reactificationtargetdate = document.forms["commentformreply"]["rectificationTargetDate"].value;
    var currentDate = new Date();

    if (reactificationstatus == "Rectified" &&  currentDate > reactifieddate) {

        alert("Rectified date should less than current date");
        return false;

    }else if(reactificationstatus == "Not Rectified" || currentDate > reactificationtargetdate){

        alert("Rectification target date should greater than current date");
        return false;
    }
    }
</script> -->


