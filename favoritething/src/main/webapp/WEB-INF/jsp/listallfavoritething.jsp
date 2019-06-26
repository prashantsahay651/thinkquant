<%@ include file="header.jsp"%>
<c:set var="favoriteThings" value="${requestScope.favoriteThings}" />
<div class="container-fluid pt-3">
	<div class="row justify-content-sm-center">
		<div class="col-sm-12 col-md-12">
			<div class="card border-info text-center">
				<div class="card-header bg-info text-white">
					<span class="form-Heading">Favorite Thing List</span>
				</div>
				<div class="card-body">
					<div class="row justify-content-sm-center mt-3">
						<div class="col-md-12">
										<table id="example" class="table table-striped table-bordered"
											style="width: 100%">
											<thead>
												<tr>
													<th>Title</th>
													<th>Description</th>
													<th>Ranking</th>
													<th>Meta Data</th>
													<th>Category</th>
													<th>Created Date</th>
													<th>Modified Date</th>
													<th>Edit</th>
												</tr>
											</thead>
											<tbody>

												<c:forEach var="favoriteThing" items="${favoriteThings}"
													varStatus="counter">
													<tr>
														<td>${favoriteThing.getTitle()}</td>
														<td>${favoriteThing.getDescription()}</td>
														<td>${favoriteThing.getRanking()}</td>
														<td>${favoriteThing.getMetadata()}</td>
														<td>${favoriteThing.getCategory()}</td>
														<td>${favoriteThing.getCreatedDate()}</td>
														<td>${favoriteThing.getModifiedDate()}</td>
														<td><a href="editfavoritething?favoriteThingId=${favoriteThing.getFavoriteThingId()}"><button
																	type="submit" class="btn btn-info btn-sm">Edit</button></a></td>
													</tr>
												</c:forEach>
											</tbody>
											<tfoot>
												<tr>
													<th>Title</th>
													<th>Description</th>
													<th>Ranking</th>
													<th>Metadata</th>
													<th>Category</th>
													<th>Created Date</th>
													<th>Modified Date</th>
													<th>Edit</th>
												</tr>
											</tfoot>
										</table>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<script type="text/javascript">
	$(document).ready(function() {
		$('#example').DataTable();
	});
</script>
			<%@ include file="footer.jsp"%>