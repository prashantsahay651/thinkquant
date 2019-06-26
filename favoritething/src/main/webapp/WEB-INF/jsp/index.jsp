<%@ include file="header.jsp"%>
<div class="container-fluid pt-3">
	<div class="row justify-content-sm-center">
		<div class="col-sm-12 col-md-12">
			<div class="card border-info text-center">
				<div class="card-header bg-info text-white">
					<span class="form-Heading">Add Favorite Thing</span>
				</div>
				<div class="card-body">
					<form class="form-signin" action="WebAddFavoriteThing"
						method="post">
						<div class="container-fluid">
							<div class="row justify-content-sm-center">

								<div class="col-sm-12 col-md-12">
									<input type="text" class="form-control mb-2"
										placeholder="Title" name="title" required autofocus>
								</div>

								<div class="col-sm-12 col-md-12">
									<textarea class="form-control mb-2" rows="2"
										placeholder="Description" name="description"></textarea>
								</div>

								<div class="col-sm-6 col-md-6">
									<input type="number" class="form-control mb-2"
										placeholder="Ranking" name="ranking" required autofocus>
								</div>

								<div class="col-sm-6 col-md-6">
									<input type="text" class="form-control mb-2"
										placeholder="Metadata" name="metadata" required autofocus>
								</div>

								<div class="col-sm-12 col-md-12">
									<input type="text" placeholder="Category" name="category"
										class="form-control mb-2" autofocus list="browsers">
									<datalist id="browsers">
										<option value="Person">
										<option value="Place">
										<option value="Food">
									</datalist>
								</div>

								<div class="col-sm-6 col-md-4 col-offset-4">
									<button class="btn btn-lg btn-info btn-block mb-2"
										type="submit">Add</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>