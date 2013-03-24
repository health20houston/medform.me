Medform.Patient.GenerateCode = function() {
	var self = this;

	/*
	 * Constructor
	 */
	self.generateCodeModal = $("#generateCodeModal");

	self.generateCodeModal.modal({
		show: false
	});

	$("#btnGenerateCode").click(function() {
		self.showDialog();
	});


	/*
	 * Methods
	 */
	self.showDialog = function() {
		/*
		 * Get a code yo
		 */
		$.get("/api/patient/getcode", function(data) {
			$("#codeSpan").html(data);
		});
		
		self.generateCodeModal.modal("show");
	};

	self.hideDialog = function() {
		self.generateCodeModal.modal("hide");
	};
};
