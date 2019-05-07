			<!--Line 49 of page.ss-->
			<div id="nav-section">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<a href="$AbsoluteBaseURL" class="nav-logo"><img src="images/logo.png" alt="One Ring Rentals" /></a>
														
							<!-- BEGIN MAIN MENU -->
							<nav class="navbar">
								<button id="nav-mobile-btn"><i class="fa fa-bars"></i></button>
								
								<ul class="nav navbar-nav">
									<!--Tutorial 4 Nav loop-->
									<% loop $Menu(1) %>
										<li><a class="$LinkingMode" href="$Link" title="Go to the $Title page">$MenuTitle</a></li>
									<% end_loop %>

									<!--Original HTML Removed
									<li><a href="#">Find a Rental</a></li>
									<li><a href="#">List your rental</a></li>
									<li><a href="#">Regions</a></li>
									<li><a href="#">Travel Guides</a></li>
									<li><a href="#">About Us</a></li>
									<li><a href="#">Regions</a></li>-->
								</ul>
							
							</nav>
							<!-- END MAIN MENU -->
							
						</div>
					</div>
				</div>
			</div>