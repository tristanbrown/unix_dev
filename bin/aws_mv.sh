# workon seerdb

for f in $(aws s3api list-objects --bucket seer-internalms --prefix EXP20103/EXP20103 --delimiter "/" --output text | grep 097a | cut -f3);
# for f in $(aws s3 ls seer-internalms/EXP20103/EXP20103 --output text | grep 097 | cut -f3);
    do aws s3 mv s3://seer-internalms/$f s3://seer-internalms/${f/097a/0297a}
    # do echo $f
    #     echo ${f/097a/0297a}
done
