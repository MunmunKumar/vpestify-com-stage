<div class="contact-section bg-0 b-0 ptb-100 pt-0">
    <div class="container">        
        <form class="contactForm" id="yForm">
            <div class="form-wrapper">
                <span id="error_message" class="text-danger"></span>
                <p id="downdata"></p>
                <div class="row">                    
                    <div class="col-lg-6 col-md-6">
                        <div class="form-group">
                            <input type="text" class="form-control" id="dname" placeholder="Name">
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-12">
                        <div class="form-group">
                            <input type="text" class='form-control mob' onkeypress="return isNumberKey(event)" maxlength="10" id="dmobile" placeholder="Phone Number">
                        </div>
                    </div>
                    
                    
                    <div class="col-lg-6 col-md-12">
                        <div class="form-group">
                            <input type="text" class="form-control" id="dservice_name" placeholder="Service Name">
                        </div>
                    </div>
                    
                    
                    <div class="col-lg-6 col-md-12">
                        <div class="form-group">
                            <input type="text" class="form-control" id="dcity" placeholder="City">
                        </div>
                    </div>

                    <div class="col-md-12 col-lg-12">
                        <div class="form-group">
                            <textarea class="form-control" id="drequirements" rows="6" placeholder="Message"></textarea>
                        </div>
                    </div>

                    <div class="col-md-12 col-lg-12">
                        <button id="senddata" type="button" class="default-btn">Send Message</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>