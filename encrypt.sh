echo "Welcome to file encrypter!"

encryption="${1}"
shift



if [[ "${encryption}" = 'rot13' ]];
then
	for f in "${@}"; do
		tr 'A-Za-z' 'N-ZA-Mn-za-m' < "${f}" > "${f}.rot13"
	done

	echo "File has been formatted to rot13!"
fi


if [[ "${encryption}" = 'base64' ]];
then
	for f in "${@}"; do
		base64 < "${f}" > "${f}.base64"
	done

	echo "File has been formatted to base64!"
fi


if [[ "${encryption}" = 'sha1' ]];
then
	for f in "${@}"; do
		sha1sum < "${f}" > "${f}.sha1"
	done

	echo "File has been formatted to sha1sum!"
fi

