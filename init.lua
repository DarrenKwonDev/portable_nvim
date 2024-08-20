-- type setting
vim.cmd("set expandtab") -- tab을 입력하면 space 가 입력됨. 다른 환경에서 일관성 있게 보이므로 추천
vim.cmd("set tabstop=4") -- tab 의 간격. space 몇 칸?
vim.cmd("set softtabstop=4") -- tab 키 눌렀을 때 space 몇 칸?
vim.cmd("set shiftwidth=4") -- 자동 들여쓰기, >, < 의 간격
vim.cmd("set number") -- 줄번호 표시

vim.cmd("set clipboard=") -- no setting clipboard

-- search and complete
vim.cmd("set hlsearch") -- 모든 검색 결과 하이라이트
vim.cmd("set ignorecase") -- smartcase를 사용하기 위해서 먼저 정의되어야 함. 또한 자동완성에서 대소문자 구별하지 않는데도 영향을 줌
vim.cmd("set smartcase") -- 소문자로만 쓰면 case insensitive. 대문자가 하나라도 포함되면 case sensitive
vim.cmd("set infercase") -- 자동 완성시 대소문자 처리

-- indentation
vim.cmd("set autoindent")
vim.cmd("set smartindent")

-- suffixadd
vim.cmd("set suffixesadd=.py,.js,.go,.sh,.c,.cpp,.h,.hpp") -- gf 로 특정 파일로 이동하려고 할 때 활용됨


-- etc
vim.cmd("set noswapfile") -- 스왑파일 사용 안함


