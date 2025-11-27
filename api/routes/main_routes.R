# plumber.R

#* @assets ../public /public
list()

#* @get /debug
function() {
  debug_point <- "../public"
  point_exists <- dir.exists(debug_point)
  list(
    wd = getwd(),
    public_exists = point_exists,
    public_contents = if (point_exists) {
      list.files(debug_point)
    } else {
      "NOT FOUND"
    }
  )
}

#* Echo back the input
#* @get /
return_msg


#* Echo back the input
#* @serializer csv
#* @get /iris
return_csv

#* Echo back the input
#* @serializer csv
#* @get /a_iris
return_aync_csv
