<%@ include file="../common/header.jsp" %>
<div class="container mt-5">
  <div class="row">
    <div class="col-md-4">
      <!-- Search Filters -->
      <div class="card shadow-sm">
        <div class="card-header bg-primary text-white">
          <h5>Filters</h5>
        </div>
        <div class="card-body">
          <form action="search" method="get">
            <div class="mb-3">
              <label class="form-label">Subject</label>
              <input type="text" name="subject" class="form-control">
            </div>
            <button type="submit" class="btn btn-primary w-100">
              <i class="fas fa-search me-1"></i> Search
            </button>
          </form>
        </div>
      </div>
    </div>
    <div class="col-md-8">
      <!-- Results -->
      <c:forEach items="${tutors}" var="tutor">
        <div class="card mb-3">
          <div class="card-body">
            <h5>${tutor.name}</h5>
            <p>Subjects: 
              <c:forEach items="${tutor.subjects}" var="subject">
                <span class="badge bg-primary">${subject}</span>
              </c:forEach>
            </p>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
</div>
<%@ include file="../common/footer.jsp" %>