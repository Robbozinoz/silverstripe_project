		<!--Breadcrumb now in includes as standard site template-->
		<% include Banner %>
		
		
		<!-- BEGIN CONTENT -->
		<div class="content">
			<div class="container">
				<div class="row">
					<div class="main col-sm-8">
                        <!--Connects Layout to page specific content in the Silverstripe/One_jr namespace-->
						$Content		

						<!--Form for login fomr to be injected into-->
						$Form	
                        <!-- replaced with variable <h1 class="section-title">Nunc enim nulla</h1>
                        <p class="darker-text">Donec magna justo, laoreet sed consectetur non, malesuada non neque. Aenean vehicula vitae dui eu convallis. Cras a venenatis urna, ac congue nulla.</p>
                        <p>Donec ex sapien, semper sit amet sodales suscipit, imperdiet in metus. Aliquam maximus mi eget finibus cursus. Duis a nisi tempus, porta eros sit amet, placerat urna. Vivamus varius enim ut sem imperdiet lacinia. Cras sed mauris ac felis rhoncus sodales sit amet eget ante. In metus purus, tristique a porttitor ac, sollicitudin vitae arcu. Quisque ac vehicula nulla. Morbi finibus facilisis cursus. Praesent sollicitudin sem id fermentum dignissim. Donec dictum dui a accumsan finibus. Quisque velit purus, lobortis et aliquam sit amet, sagittis eget lorem. Integer ut elit nisi.</p>
                        <p>Ut vel facilisis leo. Cras feugiat dolor faucibus, porttitor nisl euismod, tempus tellus. Donec varius cursus velit eu aliquam. Nulla facilisi. Pellentesque sit amet nunc nisl. Suspendisse tortor dolor, sagittis vel mattis vel, commodo eu metus. Proin a hendrerit mi. Sed blandit ante mi, nec elementum lacus elementum in. Quisque at risus nunc. Vestibulum quis diam id massa sodales viverra sit amet et nulla. Quisque commodo faucibus dignissim. Ut eros neque, tristique tincidunt sapien non, fermentum elementum metus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                        <p>Phasellus pellentesque metus neque, quis consequat neque hendrerit eget. Vestibulum nunc mauris, venenatis id mi et, ornare consectetur nisl. Nunc molestie sem tempor ante mattis, et consectetur dolor ornare. In congue elit gravida nisi semper gravida. Maecenas posuere mollis ligula, quis malesuada elit pretium vitae. Nulla aliquam eget justo sollicitudin fermentum. Nunc ac justo at arcu aliquet iaculis non non lacus. In nisi tellus, mollis nec volutpat nec, sagittis ac neque. Sed in aliquam risus. Sed in tristique nisl. Ut in tellus non neque pellentesque venenatis eget sed risus. Nulla facilisi. Duis efficitur velit nunc, et mattis enim dictum vitae. Integer tincidunt quam quis vulputate tempor. Donec sagittis tortor vitae consectetur sodales. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>-->
					</div>
					
					<div class="sidebar gray col-sm-4">
						<h2 class="section-title">In this section</h2>
						<ul class="categories subnav">
							<!--New loop for the sidebar with if loop-->
							<% if $Menu(2) %>
								<!--<h3>In this section</h3>-->
								<ul class="subnav">  
								<% loop $Menu(2) %>
									<li><a class="$LinkingMode" href="$Link">$MenuTitle</a></li>
								<% end_loop %>
								</ul>
							<% end_if %>

							<!--Replaced with menu 2 loop <li><a href="#">Company</a></li>
							<li><a href="#">FAQ</a></li>
							<li><a href="#">Careers</a></li>
							<li><a href="#">Contact Us</a></li>
							<li><a href="#">Terms of Use</a></li>
							<li><a href="#">Privacy Policy</a></li>-->
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- END CONTENT -->
		

				