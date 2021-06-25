if [[ -n $TOKEN_PICKLE_URL ]]; then
	wget --max-redirect=0 -q $TOKEN_PICKLE_URL -O /usr/src/app/token.pickle
fi

if [[ -n $ACCOUNTS_ZIP_URL ]]; then
	wget --max-redirect=0 -q $ACCOUNTS_ZIP_URL -O /usr/src/app/accounts.zip
	unzip accounts.zip -d -qq /usr/src/app/accounts
	rm accounts.zip
fi

./aria.sh; python3 -m bot
