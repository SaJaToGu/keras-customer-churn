required_files <- c(
  "README.md",
  "customer_churn.R",
  "customer_churn.Rmd",
  "data/WA_Fn-UseC_-Telco-Customer-Churn.csv",
  "data/customer_churn.RData",
  "model/customer_churn.hdf5"
)

missing_files <- required_files[!file.exists(required_files)]
if (length(missing_files) > 0) {
  stop("Missing required project files: ", paste(missing_files, collapse = ", "))
}

invisible(parse("customer_churn.R"))

message("Smoke checks passed.")
