set -exo

mkdir -p checkpoint
gdown --id 1hWc2JLM58_PkwfLG23Q5IH3Ysj2Mo1nr -O checkpoint/e4e_ffhq_encode.pt
gdown --id 1hvAAql9Jo0wlmLBSHRIGrtXHcKQE-Whn -O checkpoint/stylegan2-ffhq-config-f.pt
gdown --id 1mbGWbjivZxMGxZqyyOHbE310aOkYe2BR -O checkpoint/vgg_face_dag.pt
mkdir -p checkpoint/encoder
gdown --id 1ha4WXsaIpZfMHsqNLvqOPlUXsgh9VawU -O checkpoint/encoder/checkpoint_b.pt
gdown --id 1hfxDLujRIGU0G7pOdW9MMSBRzxZBmSKJ -O checkpoint/encoder/checkpoint_g.pt
gdown --id 1htekHopgxaW-MIjs6pYy7pyIK0v7Q0iS -O checkpoint/encoder/checkpoint_gb.pt

pushd third_party/face_parsing
./scripts/download_checkpoints.sh
popd
