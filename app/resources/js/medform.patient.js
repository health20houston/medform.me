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

Medform.Patient.signUp = function() {
	var self = this;

	/*
	 * Constructor
	 */
	self.signUpPrompt = $("#signUpPrompt");

	self.signUpPrompt.modal({
		show: false
	});

	$("#signUpNo").click(function() {
		self.hideDialog();
	});

	$("#signUpYes").click(function() {
		self.hideDialog();
	});

	$("#userBtn").click(function(e) {
		var userData = $("#signUpForm").serialize();

		/*
		 * If the user is valid redirect. If not, why not? If it
		 * is because of invalid creds let the user know. If it
		 * is because the account doesn't exist prompt.
		 */
		self.isValidUser(userData);
	});

	$("#inputEmail").focus();

	/*
	 * Methods
	 */
	self.showDialog = function() {
		self.signUpPrompt.modal("show");
	};

	self.hideDialog = function() {
		self.signUpPrompt.modal("hide");
	};

	self.isValidUser = function(userData) {
		$.post("/api/patient/validateCred", userData, function(data) {
			if (data.success) {
				window.location = "/dashboard";
			}
			else {
				if (!data.isNewUser) {
					$("#helpinline").html(data.message).show();
				} else {
					self.showDialog();
				}
			}
		});
	};
};


