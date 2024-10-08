<div class="container">
    <div class="col-12 col-sm-12 offset-sm-12 col-md-12 mt-1 pt-1 pb-1 bg-white from-wrapper " >
        <div class="countainer" style="  border: 1px solid; padding: 10px; box-shadow: 5px 10px 18px #888888;">
        <h4 style=" border: 1px solid; padding: 10px; background-color:green; color:white">Entered Comment Reviewing</h4>
            <hr style="height:2px;border-width:0;color:gray;background-color:gray">
            <div class="countainer" style="  border: 1px solid; padding: 10px; box-shadow: 5px 10px 18px #888888;">
            <div class="card-body ps-5">

            <?php if(isset($validation)):?>
                        <div class="col-12">
                            <div class="alert alert-danger" role="alert">
                                <?= $validation->listErrors() ?>
                            </div>
                        </div>
                        <?php endif;?>
            <?php if(session()->get('success')):?>
                <div class="alert alert-success mt-2" role="alert">
                    <?= session()->get('success') ?>
                </div>
                <?php endif; ?>

            <?php if(session()->get('Reject')):?>
                <div class="alert alert-warning mt-2" role="alert" role="alert">
                    <?= session()->get('Reject') ?>
                </div>
                <?php endif; ?>

        <?php $status = $commentdetails['status']?>
        <?php $setstatus = "Reviewing"  ?>
            <form name="commentform" id="commentform" action="/Development/development/public/OngoingCommentReviewing/<?php echo $commentdetails['comment_id'];?>" onsubmit="return  validateFormChecklist()" method="post">
            <div class="container border">
                <div class="row m-1">
                    <div class="col-12 col-sm-4 text-left">
                        <h6 class="fw-bold h5" >Audit ID</h6>
                        <input id="auditid" class="form-control" value="<?php echo $commentdetails['auditid'];?>"  readonly="text" name="auditid">
                    </div>
                    <div class="col-12 col-sm-4 text-left">
                        <h6 class="fw-bold h5" >Checklist ID</h6>
                        <input id="checklist_id" class="form-control" value="<?php echo $checklist['checklist_id'];?>"  readonly="text" name="checklist_id">
                    </div>
                    <div class="col-12 col-sm-4 text-left">
                        <h6 class="fw-bold h5" >Comment ID</h6>
                        <input id="comment_id" class="form-control" value="<?php echo $commentdetails['comment_id']?>"  readonly="text" name="comment_id">
                    </div>
                </div>
            </div>
            <div>
                <p name="alreadycommentavailable" id="alreadycommentavailable"></p>
            </div>
            <div class="container border mt-1">
                <div class="row mt-2">
                <h6 class="fw-bold h5" >Checklist Details</h6>
                    <div class="form-group mt-1">
                        <label for="mainarea_id " class="fw-bold" >Audit Main Area</label>
                            <select name="mainarea_id" class="form-control input-lg form-select" id="mainarea_id" onchange="firstareadeta(this.value);" <?php if($commentdetails['status'] == 'Reviewing' || $commentdetails['status'] == 'Accepted'){'';}else{echo 'disabled' ;}?> >
                            <option value="<?php echo $checklist['mainarea_id'] ?>"> <?php echo $checklist['mainarea_id'].'-'.$checklist['mainarea_description']?></option>
                            <?php if($maincheckareadetails):?>
                                    <?php foreach($maincheckareadetails as $row): ?>
                                <option value="<?php echo $row['mainarea_id'];?>"><?php echo $row['mainarea_id'];?> - <?php echo $row['mainarea_description'];?> </option>
                                <?php endforeach; ?>    
                                <?php endif; ?>
                            </select>
                        </div>
                        <div class="form-group">
                                <label for="firstsubarea_id" class="fw-bold" >First Sub Area</label>
                                <select name="firstsubarea_id" class="form-control input-lg form-select"  id="firstsubarea_id" onchange="checkitemdata(this.value);" <?php if($commentdetails['status'] == 'Reviewing' || $commentdetails['status'] == 'Accepted'){'';}else{echo 'disabled' ;}?>>                                    
                                <option value="<?php echo $checklist['firstsubarea_id'] ?>"> <?php echo $checklist['firstsubarea_id'].'-'.$checklist['firstsubarea_description']?> </option>
                                </select>
                        </div>
                        <div class="form-group">
                                <label for="checkingitem_id" class="fw-bold" >Checking Item</label>
                                <select name="checkingitem_id" class="form-control input-lg form-select"  id="checkingitem_id" onchange="alreadycomment(this.value);" <?php if($commentdetails['status'] == 'Reviewing' || $commentdetails['status'] == 'Accepted'){'';}else{echo 'disabled' ;}?>>
                                <option value="<?php echo $checklist['checkingitem_id'] ?>"> <?php echo $checklist['checkingitem_id'].'-'.$checklist['checkingitem_description']?> </option>
                                </select>
                    </div>
                </div>
                    <div class="container border mt-1">
                        <div class="row mb-1">
                                <label for="examinperiod"class="fw-bold h5" >Sample Details</label>
                                    <div class="col-12 col-sm-4  text-left">
                                    <label for="samplesize" >Sample size</label>
                                    <input type="number" class="form-control input-lg" name="samplesize" onchange="likehoodcalculate()" id="samplesize" min="0" placeholder="Enter the sample size" value="<?php echo $commentdetails['samplesize']?>" <?php if($commentdetails['status'] == 'Reviewing' || $commentdetails['status'] == 'Accepted'){'';}else{echo 'disabled' ;}?>>
                                     
                                    </div>
                                    <div class="col-12 col-sm-4 text-left">
                                    <label for="numberofissues" >Number of Issues</label> 
                                        <input type="number" class="form-control input-lg" name="numberofissues" onchange="likehoodcalculate()" id="numberofissues" min="0" placeholder="Enter number of issues size" value="<?php echo $commentdetails['numberofissues']?>" <?php if($commentdetails['status'] == 'Reviewing' || $commentdetails['status'] == 'Accepted'){'';}else{echo 'disabled' ;}?>>
                                    </div>   
                                    <div class="col-12 col-sm-4 text-left">
                                    <label for="calculatedlikelihood" >Likelihood Calculation</label> 
                                    <p class="text-primary" id="calculatedlikelihood"></p>
                                    </div> 
                                    <div class="form-group">
                                <label  for="sampledetails" >Sample Detaila</label>
                                <input id="sampledetails" class="form-control"  onload="likehoodcalculate()"  value="<?php echo $commentdetails['sampledetails']?>"  name="sampledetails" <?php if($commentdetails['status'] == 'Reviewing' || $commentdetails['status'] == 'Accepted'){'';}else{echo 'disabled' ;}?>>
                            </div>  
                            </div> 

                    </div>
                    
                    <div class="container border mt-1">
                        <div class="row mb-1">
                                <label for="likelihood"class="fw-bold h5" >Overall Risk Assesment</label>
                                    <div class="col-4 col-sm-4  text-left">
                                        <label for="likelihood" >Likehood</label>
                                        <select name="likelihood" class="form-control input-lg form-select" onchange="calculateRisk()" id="likelihood" <?php if($commentdetails['status'] == 'Reviewing' || $commentdetails['status'] == 'Accepted'){'';}else{echo 'disabled' ;}?> >
                                        <option value="<?php echo $commentdetails['likelihood']?>"><?php echo $commentdetails['likelihood']?></option>
                                        <option value="Rare">Rare</option>
                                        <option value="Unlikely">Unlikely</option>
                                        <option value="Possible">Possible</option>
                                        <option value="Likely">Likely</option>
                                        <option value="Certain">Certain</option>
                                        </select>
                                    </div>
                                    <div class="col-4 col-sm-4 text-left">
                                    <label for="significance" >Significance</label> 
                                        <select name="significance" class="form-control input-lg form-select" onchange="calculateRisk()"  id="significance" <?php if($commentdetails['status'] == 'Reviewing' || $commentdetails['status'] == 'Accepted'){'';}else{echo 'disabled' ;}?> >
                                        <option value="<?php echo $commentdetails['significance']?>"><?php echo $commentdetails['significance']?> </option>
                                        <option value="Negligble">Negligble</option>
                                        <option value="Marginal">Marginal</option>
                                        <option value="Modarate">Modarate</option>
                                        <option value="Significant">Significant</option>
                                        <option value="Critical">Critical</option>
                                        </select>
                                    </div> 
                                    <div class="col-12 col-sm-4 text-left">
                                    <label for="overallrisk" >Overall Risk</label> 
                                    <input type="text" class="form-control"  name="overallrisk" id="overallrisk" readonly>
                                    <!-- <p class="text-primary" id="overallriskassessment"></p> -->
                                    </div>

                                    <!-- <div class="col-12 col-sm-4 text-left">
                                    <label class="mt-1 fw-bold" for="overallrisk" >Overall Risk</label> 
                                        <select name="overallrisk" class="form-control input-lg form-select"  id="overallrisk" >
                                        <option value="">Select Overall Risk</option>
                                        <option value="Low">Low</option>
                                        <option value="Medium">Medium</option>
                                        <option value="High">High</option>
                                        </select>
                                    </div> -->

                        </div> 
                    </div>
                    <div class="container border mt-1">
                    <label for="comment"class="fw-bold h5" >Audit Finding</label>
                            <div class="form-group">
                                <label  class=" h6" for="commentheading" >Comment Heading</label>
                                <textarea class="form-control" name="commentheading" id="commentheading" <?php if($commentdetails['status'] == 'Reviewing' || $commentdetails['status'] == 'Accepted'){'';}else{echo 'disabled' ;}?> ><?php echo $commentdetails['commentheading']?></textarea>
                            </div>
                            <div class="form-group">
                                <label  class=" h6" for="commentdetails" >Comment Details</label>
                                <div class="form-group">
                                <textarea name="commentdetails" id="commentdetails" <?php if($commentdetails['status'] == 'Reviewing' || $commentdetails['status'] == 'Accepted'){'';}else{echo 'disabled' ;}?> ><?php echo $commentdetails['commentdetails']?></textarea>
                                </div>
                            </div>
                            <div class="form-group" >
                                <label  class=" h6" for="potentialimpact" >Potential Impact</label>
                                <div class="form-group" >
                                <textarea class="form-control" id="potentialimpact" name="potentialimpact" rows="2" <?php if($commentdetails['status'] == 'Reviewing' || $commentdetails['status'] == 'Accepted'){'';}else{echo 'disabled' ;}?> ><?php echo $commentdetails['potentialimpact']?></textarea>
                                </div>
                            </div>  

                            <div class="form-group" >
                                <label  class=" h6" for="recommendation" >Recommendation</label>
                                <div class="form-group" >
                                <textarea class="form-control" id="recommendation" name="recommendation" rows="2" <?php if($commentdetails['status'] == 'Reviewing' || $commentdetails['status'] == 'Accepted'){'';}else{echo 'disabled' ;}?> ><?php echo $commentdetails['recommendation']?></textarea>
                                </div>
                            </div>  
                            <div class="form-group" >
                                <label  class=" h6" for="targetdate" >Tartget Date</label>
                                <div class="form-group" >
                                <input type="date" name="targetdate" id="targetdate" value="<?php echo $commentdetails['targetdate']?>" <?php if($commentdetails['status'] == 'Reviewing' || $commentdetails['status'] == 'Accepted'){'';}else{echo 'disabled' ;}?> >
                                </div>
                            </div>  
                    </div>
                </div>
                        <?php if($commentdetails['status'] == 'Submit for review' || $commentdetails['status'] == 'Reject' || $commentdetails['status'] == 'Entering' ):?>
                        <div class="mt-1 primary bg-warning text-white">
                            <p>Comment Status : <?php echo $commentdetails['status']?></p>
                        </div>  
                        <?php endif; ?>              
                        <div class="row mt-5">
                            <div class="col-12 col-sm-3 text-center">
                                <button type="submit" class="btn btn-primary col-9" <?php if($commentdetails['status'] == 'Reviewing' || $commentdetails['status'] == 'Accepted'){'';}else{echo 'disabled' ;}?> > Save </button>
                            </div>
                            <div class="col-12 col-sm-3 text-center" title="To add new comment">
                                <a class="btn btn-primary col-9" href="/Development/development/public/CommentReviewingReject/<?php echo $commentdetails['comment_id']?>" onclick="return confirm('Do you realy need to reject comment for returning back to enterer?')"> Reject </a>
                            </div>
                            <div class="col-12 col-sm-3 text-center" title="Submit for reviewing">
                                <a class="btn btn-primary col-9" href="/Development/development/public/CommentReviewingAccept/<?= $commentdetails['comment_id'] ?>" onclick="return confirm('Do you realy need to accept the comment?')">Accept</a>
                            </div>
                            <div class="col-12 col-sm-3 text-center">
                                <a class="btn btn-secondary col-9" href="/Development/development/public/OngoingReviewAllComments/<?= $commentdetails['auditid'] ?>">Back</a>
                            </div>
                            
                        </div>  
                    </form>   
            </div>   
            </div>
        </div>
    </div>    
</div>

<script>

 window.onload =   onPageLoad;
 
    function onPageLoad() {
        calculateRisk();
        likehoodcalculate();
        }

    function firstareadeta(firstareaid){
        $.ajax({
            url:"<?php echo base_url('Development/development/public/commentfirstareadetails')?>",
            method:"POST",
            data:{
                cId:firstareaid,
            },
            success:function(result){
                let data = JSON.parse(result);
                document.querySelector("#firstsubarea_id").innerHTML = data;
                console.log(result);
            }
        });
    }

    function checkitemdata(checkitemid){
        $.ajax({
            url:"<?php echo base_url('Development/development/public/commentcheckitemdeails')?>",
            method:"POST",
            data:{
                cId:checkitemid,
            },
            success:function(result){
                let data = JSON.parse(result);
                document.querySelector("#checkingitem_id").innerHTML = data;
                console.log(result);
            }
        });
    }

    function alreadycomment(alreadychekitem){
        let alreadyauditid = document.forms["commentform"]["auditid"].value;
        let alreadychecklsitid = document.forms["commentform"]["checklist_id"].value;

        $.ajax({
            url:"<?php echo base_url('Development/development/public/alreadycommententer')?>",
            method:"POST",
            data:{
                alreadycheckitem:alreadychekitem,
                alreadyauditid:alreadyauditid,
                alreadychecklsitid:alreadychecklsitid,
            },
            success:function(result){
                let output = JSON.parse(result);
                document.getElementById("alreadycommentavailable").textContent = "Comment ID: " + output;
                alert('Comment ID already available -: ' + output);
                    return false;
            }
        });

    }


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

        function likehoodcalculate() {
            // Get the input values
            var num1 = parseFloat(document.getElementById("numberofissues").value);
            var num2 = parseFloat(document.getElementById("samplesize").value);

                var result = num1 / num2 * 100 ;
                var output = "";
                if(num1 > num2 ){
                    output = "Enter Correct Details";
                } else if(result<5){
                    output = "Rare";
                }else if(result<20){
                    output = "Unlikely"
                }else if(result<40){
                    output = "Possible"
                }else if(result<75){
                    output = "likely"
                }else if(result<=100){
                    output = "Certain"
                }else{
                    output = "Enter the sample Details"
                }
                // Display the result
                document.getElementById("calculatedlikelihood").textContent = "Liklihood: " + output;
            
        }


        function calculateRisk() {
            const likelihood = document.getElementById('likelihood').value;
            const significance = document.getElementById('significance').value;
            var output = document.getElementById("output");


            // Define a mapping of significance and likelihood to overall risk
            const riskMatrix = {
                'RareNegligble': 'Low',
                'RareMarginal': 'Low',
                'RareModarate': 'Low',
                'RareSignificant': 'Medium',
                'RareCritical': 'Medium',
                'UnlikelyNegligble': 'Low',
                'UnlikelyMarginal': 'Low',
                'UnlikelyModarate': 'Medium',
                'UnlikelySignificant': 'Medium',
                'UnlikelyCritical': 'High',
                'PossibleNegligble': 'Low',
                'PossibleMarginal': 'Medium',
                'PossibleModarate': 'Medium',
                'PossibleSignificant': 'High',
                'PossibleCritical': 'High',
                'LikelyNegligble': 'Medium',
                'LikelyMarginal': 'Medium',
                'LikelyModarate': 'High',
                'LikelySignificant': 'High',
                'LikelyCritical': 'High',
                'CertainNegligble': 'Medium',
                'CertainMarginal': 'High',
                'CertainModarate': 'High',
                'CertainSignificant': 'High',
                'CertainCritical': 'High',
                'CertainCritical': 'High',
            };

            if(likelihood == ``|| significance == `` ){
                var overallRiskassestment = `Select Likelihood and Significance` 
            // document.getElementById('overallriskassessment').textContent = `Overall Risk: ${overallRiskassestment}`;
            overallrisk.value = overallRiskassestment ;

            }else{

            const overallRiskassestment = riskMatrix[likelihood + significance];
            // document.getElementById('overallriskassessment').textContent = `Overall Risk: ${overallRiskassestment}`;
            overallrisk.value = overallRiskassestment ;

            if(overallrisk.value == `High`){
                overallrisk.style.backgroundColor = 'OrangeRed';
            }else if(overallrisk.value == `Medium`){
                overallrisk.style.backgroundColor = 'Orange';
            }else if(overallrisk.value == `Low`){
                overallrisk.style.backgroundColor = 'GreenYellow';
            }else{
                overallrisk.value == `blue`
            }
        }  
        }
  
</script>

<!-- <script src="https://cdn.ckeditor.com/ckeditor5/40.0.0/classic/ckeditor.js"></script> -->
<script src="https://cdn.ckeditor.com/4.22.1/standard/ckeditor.js"></script>
<script> CKEDITOR.replace( 'commentdetails' ); </script>
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

<script>
function validateFormChecklist() {
  let mainarea_id = document.forms["commentform"]["mainarea_id"].value;
  let firstsubarea_id = document.forms["commentform"]["firstsubarea_id"].value;
  let checkingitem_id = document.forms["commentform"]["checkingitem_id"].value;
  
  if (mainarea_id == ""|| firstsubarea_id == ''|| checkingitem_id == '') {
    alert("Checklist items sould be selected properly");
    return false;
  }
    }

function validateFormSample() {
  let sampledetails = document.forms["commentform"]["sampledetails"].value;
  
  if (sampledetails == "") {
    alert("Sample details sould be entered");
    return false;
        }
    }

function validateFormSample() {
  let samplesize = document.forms["commentform"]["samplesize"].value;
  let numberofissues = document.forms["commentform"]["numberofissues"].value;
  
  if (samplesize < numberofissues) {
    alert("Sample size should be greater thatn number of issues");
    return false;
        }
    }

function validateFormRisk() {
  let likelihood = document.forms["commentform"]["likelihood"].value;
  let significance = document.forms["commentform"]["significance"].value;
  
    if (commentheading == ""|| significance == '') {
    alert("Risk assesment details should entered");
    return false;
  }
    }

//     function validateFormComment() {
//         let commentheading = document.forms["commentform"]["commentheading"].value;
//         let commentdetails = document.forms["commentform"]["commentdetails"].value;
  
//         if (commentheading == "") {
//         alert("Audit Finding (Comment Hedaing and Comment details)  details should entered");
//         return false;
//   }
//     }

function validateFormPotentialImpact() {
    let potentialimpact = document.forms["commentform"]["potentialimpact"].value;

    if (potentialimpact == "") {
    alert("Potential Impact should entered");
    return false;
  }
    }

function validateFormRecomendation() {
    let recommendation = document.forms["commentform"]["recommendation"].value;

    if (recommendation == "") {
    alert("Recomendation should entered");
    return false;
  }
    }

function validateFormTargetdate() {
    let targetdate = document.forms["commentform"]["targetdate"].value;

    if (targetdate == "") {
    alert("Targetdate  should entered");
    return false;
    }

    }

function validateFormTargetdatefuture() {
    let targetdate = document.forms["commentform"]["targetdate"].value;
    var currentDate = new Date().toISOString().split('T')[0] + 3 ;

     if(targetdate < currentDate){
        alert("Target date should be future date");
        return false;
    }

    }
    
</script>



