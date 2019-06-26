<%@ include file="header.jsp"%>
<c:set var="favoriteThing" value="${requestScope.favoriteThing}" />
<div class="container-fluid pt-3">
	<div class="row justify-content-sm-center">
		<div class="col-sm-12 col-md-12">
			<div class="card border-info text-center">
				<div class="card-header bg-info text-white">
					<span class="form-Heading">Edit Favorite Thing</span>
				</div>
				<div class="card-body">
					<form class="form-signin" action="WebEditFavoriteThing" method="post">
						<div class="container-fluid">
							<div class="row justify-content-sm-center">
								<input name="favoriteThingId" value="${favoriteThing.getFavoriteThingId()}" type="hidden">
								<input name="createdDate" value="${favoriteThing.getCreatedDate()}" type="hidden">
							
								<div class="col-sm-12 col-md-12">
								
									<input type="text" class="form-control mb-2"
										placeholder="Title" name="title" required autofocus value="${favoriteThing.getTitle()}">
								</div>

								<div class="col-sm-12 col-md-12">
									<textarea class="form-control mb-2" rows="2"
										placeholder="Description" name="description" >${favoriteThing.getDescription()}</textarea>
								</div>

								<div class="col-sm-6 col-md-6">
									<input type="number" class="form-control mb-2"
										placeholder="Ranking" name="ranking" required autofocus value="${favoriteThing.getRanking()}">
								</div>

								<div class="col-sm-6 col-md-6">
									<input type="text" class="form-control mb-2"
										placeholder="Metadata" name="metadata" required autofocus value="${favoriteThing.getMetadata()}">
								</div>

								<div class="col-sm-12 col-md-12" >
									<input type="text" placeholder="Category" name="category" class="form-control mb-2"
										 autofocus value="${favoriteThing.getCategory()}" list="browsers">
										 <datalist id="browsers">
										<option value="Person">
										<option value="Place">
										<option value="Food">
									</datalist>
								</div>

								<div class="col-sm-6 col-md-4 col-offset-4">
									<button class="btn btn-lg btn-info btn-block mb-2"
										type="submit">Edit</button>
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