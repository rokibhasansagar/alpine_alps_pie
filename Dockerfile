FROM woahbase/alpine-glibc:x86_64
LABEL maintainer="fr3akyphantom <rokibhasansagar2014@outlook.com>"
LABEL Description="This Alpine image is used as the Drive for ALPS Pie Source Code"

ENV LANG=C.UTF-8

RUN set -xe \
    && apk add -uU --no-cache --purge \
        bash alpine-sdk sudo shadow \
        curl ca-certificates openssl git \
        unzip tar aria2

RUN set -xe \
    && groupadd --gid 1000 alpine \
    && useradd --uid 1000 --gid alpine --shell /bin/bash --create-home alpine \
    && echo 'alpine ALL=NOPASSWD: ALL' >> /etc/shadow

ENV \
    GZ00="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz00" \
    GZ01="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz01" \
    GZ02="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz02" \
    GZ03="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz03" \
    GZ04="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz04" \
    GZ05="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz05" \
    GZ06="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz06" \
    GZ07="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz07" \
    GZ08="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz08" \
    GZ09="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz09" \
    GZ10="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz10" \
    GZ11="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz11" \
    GZ12="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz12" \
    GZ13="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz13" \
    GZ14="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz14" \
    GZ15="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz15" \
    GZ16="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz16" \
    GZ17="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz17" \
    GZ18="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz18" \
    GZ19="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz19" \
    GZ20="t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz20" \
    GZ00_Folder="1899786940962582780" \
    GZ01_Folder="1899786940962582796" \
    GZ02_Folder="1899786940962582820" \
    GZ03_Folder="1899786940962583142" \
    GZ04_Folder="1899786940962583143" \
    GZ05_Folder="1899786940962583181" \
    GZ06_Folder="1899786940962583395" \
    GZ07_Folder="1899786940962583597" \
    GZ08_Folder="1899786940962583594" \
    GZ09_Folder="1899786940962583593" \
    GZ10_Folder="1899786940962583595" \
    GZ11_Folder="1899786940962583596" \
    GZ12_Folder="1899786940962583443" \
    GZ13_Folder="1899786940962583392" \
    GZ14_Folder="1899786940962583527" \
    GZ15_Folder="1899786940962583205" \
    GZ16_Folder="1899786940962583204" \
    GZ17_Folder="1899786940962582827" \
    GZ18_Folder="1899786940962582828" \
    GZ19_Folder="1899786940962582829" \
    GZ20_Folder="1899786940962582244"

VOLUME /home/alpine/

WORKDIR /home/alpine/project/

RUN set -xe \
    && echo "Downloading part 00" \
    && aria2c -q -x12 "https://or1.androidfilehost.com/dl/z9-lYkmgXmxf9aRuBuK_gQ/1569060341/${GZ00_Folder}/${GZ00}" \
        "https://de1.androidfilehost.com/dl/4EtuGRKoO45wIlVDHdl-3Q/1569061058/${GZ00_Folder}/${GZ00}" \
        "https://gb1.androidfilehost.com/dl/9S8XvkHVRTV_pX6KolItJw/1569061059/${GZ00_Folder}/${GZ00}" \
    && echo "Downloading part 01" \
    && aria2c -q -x12 "https://va2.androidfilehost.com/dl/i59Mir3cQG75F16YVgza5Q/1569060961/${GZ01_Folder}/${GZ01}" \
        "https://de1.androidfilehost.com/dl/Xw8X6Q_exq5gi4DOCnh18w/1569060954/${GZ01_Folder}/${GZ01}" \
        "https://qc5.androidfilehost.com/dl/4oJhfO1bMgWV2gS_sS68Mg/1569060958/${GZ01_Folder}/${GZ01}" \
    && echo "Appending part 01 onto 00" \
    && cat ${GZ01} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ01} \
    && echo "Downloading part 02" \
    && aria2c -q -x12 "https://va2.androidfilehost.com/dl/86P1jovrrpkAR6PxqHc8NQ/1569061328/${GZ02_Folder}/${GZ02}" \
        "https://de1.androidfilehost.com/dl/JBBt84ZupUgxi5Fxt3k4iQ/1569061324/${GZ02_Folder}/${GZ02}" \
        "https://qc3.androidfilehost.com/dl/bF7rtdigXDEmfTyd6B5jow/1569061325/${GZ02_Folder}/${GZ02}" \
    && echo "Appending part 02 onto 00" \
    && cat ${GZ02} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ02} \
    && echo "Downloading part 03" \
    && aria2c -q -x12 "https://va2.androidfilehost.com/dl/AXPqWgAAKENhjITAnak8Og/1569061396/${GZ03_Folder}/${GZ03}" \
        "https://de1.androidfilehost.com/dl/tKXxJNlHIulDsOIYRidRrQ/1569061391/${GZ03_Folder}/${GZ03}" \
        "https://qc1.androidfilehost.com/dl/WkjgA8Nc8XeD1G8aGhpogA/1569061392/${GZ03_Folder}/${GZ03}" \
    && echo "Appending part 03 onto 00" \
    && cat ${GZ03} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ03} \
    && echo "Downloading part 04" \
    && aria2c -q -x12 "https://va2.androidfilehost.com/dl/pzdyCCOOtsFT20HP5Gwf6Q/1569061471/${GZ04_Folder}/${GZ04}" \
        "https://de1.androidfilehost.com/dl/gY9K9ZZl3AL0hexJ-ltvNw/1569061466/${GZ04_Folder}/${GZ04}" \
        "https://qc5.androidfilehost.com/dl/dEY6jZXCb_9QB-D_BMG25Q/1569061470/${GZ04_Folder}/${GZ04}" \
    && echo "Appending part 04 onto 00" \
    && cat ${GZ04} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ04} \
    && echo "Downloading part 05" \
    && aria2c -q -x12 "https://or1.androidfilehost.com/dl/48QV9e1bakC1KschoBtkvA/1569061639/${GZ05_Folder}/${GZ05}" \
        "https://de1.androidfilehost.com/dl/BG-HIM4go0sMYxEdXnHG1w/1569061638/${GZ05_Folder}/${GZ05}" \
        "https://va1.androidfilehost.com/dl/48QV9e1bakC1KschoBtkvA/1569061639/${GZ05_Folder}/${GZ05}" \
    && echo "Appending part 05 onto 00" \
    && cat ${GZ05} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ05} \
    && echo "Downloading part 06" \
    && aria2c -q -x12 "https://or1.androidfilehost.com/dl/uqn3GLTaGyWTGZ0cf40vHw/1569061707/${GZ06_Folder}/${GZ06}" \
        "https://de1.androidfilehost.com/dl/dBmUgpHMfUQTyigofP-McA/1569061706/${GZ06_Folder}/${GZ06}" \
        "https://qc2.androidfilehost.com/dl/o3Op6ZV4UsgzWLCdnypdWA/1569061708/${GZ06_Folder}/${GZ06}" \
    && echo "Appending part 06 onto 00" \
    && cat ${GZ06} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ06} \
    && echo "Downloading part 07" \
    && aria2c -q -x12 "https://or1.androidfilehost.com/dl/ne8Ywg9PDhXyt2B4xvtn4w/1569061752/${GZ07_Folder}/${GZ07}" \
        "https://de1.androidfilehost.com/dl/Nu3-hUtqPMNLGQMGd53axQ/1569061751/${GZ07_Folder}/${GZ07}" \
        "https://qc4.androidfilehost.com/dl/ne8Ywg9PDhXyt2B4xvtn4w/1569061752/${GZ07_Folder}/${GZ07}" \
    && echo "Appending part 07 onto 00" \
    && cat ${GZ07} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ07} \
    && echo "Downloading part 08" \
    && aria2c -q -x12 "https://or1.androidfilehost.com/dl/6i7EiG2w8478mGXKxCDWAQ/1569061800/${GZ08_Folder}/${GZ08}" \
        "https://de1.androidfilehost.com/dl/r3qRIRA0fXIwD2UB1d8Nxg/1569061799/${GZ08_Folder}/${GZ08}" \
        "https://qc5.androidfilehost.com/dl/9z7BcL-OWSOGpnN8IOxRvw/1569061801/${GZ08_Folder}/${GZ08}" \
    && echo "Appending part 08 onto 00" \
    && cat ${GZ08} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ08} \
    && echo "Downloading part 09" \
    && aria2c -q -x12 "https://va1.androidfilehost.com/dl/Pyr8DLFXFMGKu6PqkTMoGg/1569061858/${GZ09_Folder}/${GZ09}" \
        "https://de1.androidfilehost.com/dl/-61B1S0oHVArXG682wfJ3Q/1569061854/${GZ09_Folder}/${GZ09}" \
        "https://qc5.androidfilehost.com/dl/Pyr8DLFXFMGKu6PqkTMoGg/1569061858/${GZ09_Folder}/${GZ09}" \
    && echo "Appending part 09 onto 00" \
    && cat ${GZ09} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ09} \
    && echo "Downloading part 10" \
    && aria2c -q -x12 "https://va1.androidfilehost.com/dl/i4Gt_lyhChQ-M9bw1kZcBA/1569061912/${GZ10_Folder}/${GZ10}" \
        "https://de1.androidfilehost.com/dl/0EFP70rl7ZvHlIoyXNWWcw/1569061908/${GZ10_Folder}/${GZ10}" \
        "https://qc1.androidfilehost.com/dl/h8GKEAe5oWqmyCclKfnJ5w/1569061909/${GZ10_Folder}/${GZ10}" \
    && echo "Appending part 10 onto 00" \
    && cat ${GZ10} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ10} \
    && echo "Downloading part 11" \
    && aria2c -q -x12 "https://va1.androidfilehost.com/dl/wC_aV-QGlO2OhRmQkIm6jw/1569061955/${GZ11_Folder}/${GZ11}" \
        "https://de1.androidfilehost.com/dl/7SUg1311U9DTyoIL5WX3Nw/1569061950/${GZ11_Folder}/${GZ11}" \
        "https://qc2.androidfilehost.com/dl/BYF9eh8r-WYaujjOX3IyXA/1569061951/${GZ11_Folder}/${GZ11}" \
    && echo "Appending part 11 onto 00" \
    && cat ${GZ11} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ11} \
    && echo "Downloading part 12" \
    && aria2c -q -x12 "https://or1.androidfilehost.com/dl/gpMKDfCjsweLjsRXpIw-pQ/1569061996/${GZ12_Folder}/${GZ12}" \
        "https://de1.androidfilehost.com/dl/5c4Y_gRfoozY_5DpaBB68w/1569061994/${GZ12_Folder}/${GZ12}" \
        "https://va1.androidfilehost.com/dl/6c95P3LZpIHy4tk5Qr88zw/1569061999/${GZ12_Folder}/${GZ12}" \
    && echo "Appending part 12 onto 00" \
    && cat ${GZ12} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ12} \
    && echo "Downloading part 13" \
    && aria2c -q -x12 "https://va1.androidfilehost.com/dl/WKGX4mJK9o07yWdvbb9Npw/1569062065/${GZ13_Folder}/${GZ13}" \
        "https://de1.androidfilehost.com/dl/8MzfhB30JfykmW5CptRRaQ/1569062058/${GZ13_Folder}/${GZ13}" \
        "https://qc2.androidfilehost.com/dl/VIOFe1uSUR-QDx3oWvt2Sg/1569062062/${GZ13_Folder}/${GZ13}" \
    && echo "Appending part 13 onto 00" \
    && cat ${GZ13} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ13} \
    && echo "Downloading part 14" \
    && aria2c -q -x12 "https://or1.androidfilehost.com/dl/euaTUazJMOais8bwXtwS-Q/1569062107/${GZ14_Folder}/${GZ14}" \
        "https://de1.androidfilehost.com/dl/fwAXcuFPByMBkujY4nSBXA/1569062106/${GZ14_Folder}/${GZ14}" \
        "https://qc2.androidfilehost.com/dl/euaTUazJMOais8bwXtwS-Q/1569062107/${GZ14_Folder}/${GZ14}" \
    && echo "Appending part 14 onto 00" \
    && cat ${GZ14} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ14} \
    && echo "Downloading part 15" \
    && aria2c -q -x12 "https://va2.androidfilehost.com/dl/PPNSbQ-U7ofQDZqrxEwN6g/1569062203/${GZ15_Folder}/${GZ15}" \
        "https://de1.androidfilehost.com/dl/kKvMdv-FCtk-uSnw3IS8tA/1569062195/${GZ15_Folder}/${GZ15}" \
        "https://qc2.androidfilehost.com/dl/SR0_PhPs4UxSgqDgWLH0sQ/1569062199/${GZ15_Folder}/${GZ15}" \
    && echo "Appending part 15 onto 00" \
    && cat ${GZ15} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ15} \
    && echo "Downloading part 16" \
    && aria2c -q -x12 "https://or1.androidfilehost.com/dl/8VCg1pBBx9GrqKS9CKt8mg/1569062298/${GZ16_Folder}/${GZ16}" \
        "https://de1.androidfilehost.com/dl/1kVfp8ufKG4AYmB1Odfg2g/1569062296/${GZ16_Folder}/${GZ16}" \
        "https://qc2.androidfilehost.com/dl/8VCg1pBBx9GrqKS9CKt8mg/1569062298/${GZ16_Folder}/${GZ16}" \
    && echo "Appending part 16 onto 00" \
    && cat ${GZ16} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ16} \
    && echo "Downloading part 17" \
    && aria2c -q -x12 "https://or1.androidfilehost.com/dl/v4FI-YhcidyfboHguh4_Lg/1569062348/${GZ17_Folder}/${GZ17}" \
        "https://de1.androidfilehost.com/dl/T-IXU1yGhtuY6rQrcPOAyg/1569062347/${GZ17_Folder}/${GZ17}" \
        "https://qc3.androidfilehost.com/dl/v4FI-YhcidyfboHguh4_Lg/1569062348/${GZ17_Folder}/${GZ17}" \
    && echo "Appending part 17 onto 00" \
    && cat ${GZ17} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ17} \
    && echo "Downloading part 18" \
    && aria2c -q -x12 "https://va2.androidfilehost.com/dl/26RKotNCQfUHV467yhEpzg/1569062450/${GZ18_Folder}/${GZ18}" \
        "https://de1.androidfilehost.com/dl/OCH3SL4fhiZHvBfDKwYY0A/1569062445/${GZ18_Folder}/${GZ18}" \
        "https://qc5.androidfilehost.com/dl/XWLAXey3mlQQRehBPtYVvQ/1569062449/${GZ18_Folder}/${GZ18}" \
    && echo "Appending part 18 onto 00" \
    && cat ${GZ18} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ18} \
    && echo "Downloading part 19" \
    && aria2c -q -x12 "https://or1.androidfilehost.com/dl/ISdcwV4El2naGuUAWVZd1g/1569062492/${GZ19_Folder}/${GZ19}" \
        "https://de1.androidfilehost.com/dl/urPPaZ2at_JgO2grbyHtzQ/1569062490/${GZ19_Folder}/${GZ19}" \
        "https://qc5.androidfilehost.com/dl/KdBdzYc4eHpY2cnlw1mPJQ/1569062495/${GZ19_Folder}/${GZ19}" \
    && echo "Appending part 19 onto 00" \
    && cat ${GZ19} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ19} \
    && echo "Downloading last part 20" \
    && aria2c -q -x12 "https://va2.androidfilehost.com/dl/QAwnibbyKV8EByneKjB7Vw/1569062560/${GZ20_Folder}/${GZ20}" \
        "https://gb1.androidfilehost.com/dl/NFuudw8EZnbQR_qCnt3r7Q/1569062556/${GZ20_Folder}/${GZ20}" \
        "https://qc3.androidfilehost.com/dl/SHuduWWA-75Ar2VyBejrDw/1569062557/${GZ20_Folder}/${GZ20}" \
    && echo "Appending part 20 onto 00" \
    && cat ${GZ20} >> ${GZ00} \
    && ls -la * \
    && rm ${GZ20} \
    && echo "Parts downloading done!" \
    && mv ${GZ00} t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz \
    && ls -la *

RUN set -xe \
    && df -hT \
    && cd /home/alpine/project/
    && ls -la \
    && tar xzvf t-alps-release-p0.mp2-V3.100.mt6737-53-39-6580.tar.gz \
    && rm -rf *.tar.gz

USER alpine

ENTRYPOINT ["/bin/bash"]
