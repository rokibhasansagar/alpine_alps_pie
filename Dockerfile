FROM woahbase/alpine-glibc:x86_64
LABEL maintainer="fr3akyphantom <rokibhasansagar2014@outlook.com>"
LABEL Description="This Alpine image is used as the Drive for ALPS Pie Source Code"

ENV LANG=C.UTF-8

RUN set -xe \
    && apk add -uU --no-cache --purge -uU \
        bash alpine-sdk sudo shadow \
        curl ca-certificates openssl git \
        unzip tar aria2

RUN set -xe \
    && groupadd --gid 1000 alpine \
    && useradd --uid 1000 --gid alpine --shell /bin/bash --create-home alpine \
    && echo 'alpine ALL=NOPASSWD: ALL' >> /etc/shadow

USER alpine

VOLUME /home/alpine/
WORKDIR /home/alpine/project/

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

Run set -xe \
    && pwd \
    && df -hT \
    && echo "Downloading part.. gz00" \
    && aria2c -q -x8 "https://va1.androidfilehost.com/dl/frmyd1DsW8SWJRYkm_guWw/1568717354/${GZ00_Folder}/${GZ00}" \
         "https://de1.androidfilehost.com/dl/_nnZFojtSUGAKDf-TMHf9A/1568717350/${GZ00_Folder}/${GZ00}" \
         "https://gb1.androidfilehost.com/dl/eQFclK7DeOQNcpH2Rs8tMw/1568717351/${GZ00_Folder}/${GZ00}" \
    && echo "Downloading part.. gz01" \
    && aria2c -q -x8 "https://va1.androidfilehost.com/dl/9RQv1FpKPx3MESKTEc4rFw/1568717917/${GZ01_Folder}/${GZ01}" \
         "https://de1.androidfilehost.com/dl/GHBMgwTEr7Bko4QPlgquUw/1568717912/${GZ01_Folder}/${GZ01}" \
         "https://qc5.androidfilehost.com/dl/v_loSrGqM1lZ6hS5cxDE8Q/1568717916/${GZ01_Folder}/${GZ01}" \
    && echo "Downloading part.. gz02" \
    && aria2c -q -x8 "https://or1.androidfilehost.com/dl/jdjEZxUGJz1x0TKqkXlS6Q/1568718016/${GZ02_Folder}/${GZ02}" \
         "https://de1.androidfilehost.com/dl/jdjEZxUGJz1x0TKqkXlS6Q/1568718016/${GZ02_Folder}/${GZ02}" \
         "https://qc3.androidfilehost.com/dl/ejr3qDiZg3p3QhMpEhMELw/1568718017/${GZ02_Folder}/${GZ02}" \
    && echo "Downloading part.. gz03" \
    && aria2c -q -x8 "https://or1.androidfilehost.com/dl/E31ukaPfxjyIyYITkXQjzA/1568718123/${GZ03_Folder}/${GZ03}" \
         "https://de1.androidfilehost.com/dl/koMYO8Nlyfp4quhald9-4g/1568718122/${GZ03_Folder}/${GZ03}" \
         "https://qc1.androidfilehost.com/dl/E31ukaPfxjyIyYITkXQjzA/1568718123/${GZ03_Folder}/${GZ03}" \
    && echo "Downloading part.. gz04" \
    && aria2c -q -x8 "https://va2.androidfilehost.com/dl/GgoDrssf6reNiWJ8Yxzulg/1568718215/${GZ04_Folder}/${GZ04}" \
         "https://de1.androidfilehost.com/dl/SSX-tlM5vxTHtTdngX3mEw/1568718210/${GZ04_Folder}/${GZ04}" \
         "https://qc5.androidfilehost.com/dl/5p0vw6IfeC7_yV9V0lSZ-g/1568718212/${GZ04_Folder}/${GZ04}" \
    && echo "Downloading part.. gz05" \
    && aria2c -q -x8 "https://va1.androidfilehost.com/dl/_Y4Oj5OaHW3-CXQhwse22A/1568718357/${GZ05_Folder}/${GZ05}" \
         "https://de1.androidfilehost.com/dl/yxqoeczPY3TuNT8KsFchpA/1568718353/${GZ05_Folder}/${GZ05}" \
         "https://gb1.androidfilehost.com/dl/UFhPpEmG0KWLKDsU2vZmng/1568718354/${GZ05_Folder}/${GZ05}" \
    && echo "Downloading part.. gz06" \
    && aria2c -q -x8 "https://de1.androidfilehost.com/dl/0Dm7JIWuEc5ad1S4BBs3GA/1568718444/${GZ06_Folder}/${GZ06}" \
         "https://gb1.androidfilehost.com/dl/0Dm7JIWuEc5ad1S4BBs3GA/1568718444/${GZ06_Folder}/${GZ06}" \
         "https://qc2.androidfilehost.com/dl/kXXUz97hc21ILQoBqxSzUA/1568718447/${GZ06_Folder}/${GZ06}" \
    && echo "Downloading part.. gz07" \
    && aria2c -q -x8 "https://or1.androidfilehost.com/dl/NmiUHxCZUIbPNT-LAUvyFw/1568718590/${GZ07_Folder}/${GZ07}" \
         "https://de1.androidfilehost.com/dl/pR5FxE0wlOHaRyvkev3Pjw/1568718589/${GZ07_Folder}/${GZ07}" \
         "https://va1.androidfilehost.com/dl/1XOfBC1wwC1i1nlQ7xz5gA/1568718591/${GZ07_Folder}/${GZ07}" \
    && echo "Downloading part.. gz08" \
    && aria2c -q -x8 "https://va1.androidfilehost.com/dl/kklzyY8JV3i3HPVIrWWN0A/1568718843/${GZ08_Folder}/${GZ08}" \
         "https://de1.androidfilehost.com/dl/QM2A03873PjqAw29p8jNXA/1568718842/${GZ08_Folder}/${GZ08}" \
         "https://qc5.androidfilehost.com/dl/kklzyY8JV3i3HPVIrWWN0A/1568718843/${GZ08_Folder}/${GZ08}" \
    && echo "Downloading part.. gz09" \
    && aria2c -q -x8 "https://or1.androidfilehost.com/dl/ldqjuNkDZmumrataI7Fb4g/1568718972/${GZ09_Folder}/${GZ09}" \
         "https://de1.androidfilehost.com/dl/ElVNfK01yfNY_mgAeIeH6w/1568718971/${GZ09_Folder}/${GZ09}" \
         "https://qc5.androidfilehost.com/dl/ldqjuNkDZmumrataI7Fb4g/1568718972/${GZ09_Folder}/${GZ09}" \
    && echo "Downloading part.. gz10" \
    && aria2c -q -x8 "https://va1.androidfilehost.com/dl/DGLFp8nsdI_zWbZqCv_YHw/1568719220/${GZ10_Folder}/${GZ10}" \
         "https://de1.androidfilehost.com/dl/gt9duoAXHfAegD2nEpBYGw/1568719214/${GZ10_Folder}/${GZ10}" \
         "https://qc1.androidfilehost.com/dl/EHojK7TbwFjfMpuUUzBoFw/1568719217/${GZ10_Folder}/${GZ10}" \
    && echo "Downloading part.. gz11" \
    && aria2c -q -x8 "https://va1.androidfilehost.com/dl/dORwv7zzsuDM9a1pT-3-Qg/1568719430/${GZ11_Folder}/${GZ11}" \
         "https://de1.androidfilehost.com/dl/O6LmHPQjciAqzNKQnhlPdQ/1568719426/${GZ11_Folder}/${GZ11}" \
         "https://qc2.androidfilehost.com/dl/dORwv7zzsuDM9a1pT-3-Qg/1568719430/${GZ11_Folder}/${GZ11}" \
    && echo "Downloading part.. gz12" \
    && aria2c -q -x8 "https://de1.androidfilehost.com/dl/QqvmqZOSFDDGac2QzK3FIA/1568719535/${GZ12_Folder}/${GZ12}" \
         "https://gb1.androidfilehost.com/dl/QqvmqZOSFDDGac2QzK3FIA/1568719535/${GZ12_Folder}/${GZ12}" \
         "https://va1.androidfilehost.com/dl/WP1LXtoxcoiP-thxEIKeEg/1568724739/${GZ12_Folder}/${GZ12}" \
    && echo "Downloading part.. gz13" \
    && aria2c -q -x8 "https://va1.androidfilehost.com/dl/CUKxn52lFy0mZxVM09uDxA/1568719619/${GZ13_Folder}/${GZ13}" \
         "https://de1.androidfilehost.com/dl/HRYiHQN_zEouNwCyOfPKOg/1568719618/${GZ13_Folder}/${GZ13}" \
         "https://qc2.androidfilehost.com/dl/CUKxn52lFy0mZxVM09uDxA/1568719619/${GZ13_Folder}/${GZ13}" \
    && echo "Downloading part.. gz14" \
    && aria2c -q -x8 "https://va1.androidfilehost.com/dl/KCf6ubF1QEEdjUHbhTGl8w/1568719739/${GZ14_Folder}/${GZ14}" \
         "https://de1.androidfilehost.com/dl/ZMxm8JcEY0DRLdDcpZrjFA/1568719735/${GZ14_Folder}/${GZ14}" \
         "https://qc2.androidfilehost.com/dl/_21Yv5f379O0Bjk8UwZ1-Q/1568719738/${GZ14_Folder}/${GZ14}" \
    && echo "Downloading part.. gz15" \
    && aria2c -q -x8 "https://va2.androidfilehost.com/dl/kBi2yZAoUnXBKBB9mKlYJw/1568719820/${GZ15_Folder}/${GZ15}" \
         "https://de1.androidfilehost.com/dl/1ZXqF6OM8OGlfq9hydqsnw/1568719815/${GZ15_Folder}/${GZ15}" \
         "https://qc2.androidfilehost.com/dl/Yb08aNFfk37CcHH3w0UecQ/1568719816/${GZ15_Folder}/${GZ15}" \
    && echo "Downloading part.. gz16" \
    && aria2c -q -x8 "https://or1.androidfilehost.com/dl/jNCl1LVi-OsgbPEnqFJ72w/1568719952/${GZ16_Folder}/${GZ16}" \
         "https://de1.androidfilehost.com/dl/O_KP693t2_XJDlju45fqxw/1568719951/${GZ16_Folder}/${GZ16}" \
         "https://qc2.androidfilehost.com/dl/jNCl1LVi-OsgbPEnqFJ72w/1568719952/${GZ16_Folder}/${GZ16}" \
    && echo "Downloading part.. gz17" \
    && aria2c -q -x8 "https://de1.androidfilehost.com/dl/9qNmVw0BiSQt8RG8Si-9Gw/1568720043/${GZ17_Folder}/${GZ17}" \
         "https://gb1.androidfilehost.com/dl/gT1GatyQYnyMg6yhx13NNQ/1568720044/${GZ17_Folder}/${GZ17}" \
         "https://qc3.androidfilehost.com/dl/IimUk1PMCUhuSNyxGPRrzA/1568720047/${GZ17_Folder}/${GZ17}" \
    && echo "Downloading part.. gz18" \
    && aria2c -q -x8 "https://or1.androidfilehost.com/dl/csLxO2CbwlWscApdGgAGMw/1568720136/${GZ18_Folder}/${GZ18}" \
         "https://de1.androidfilehost.com/dl/PZRU4o1qjSrpqS9bsvLQlg/1568720135/${GZ18_Folder}/${GZ18}" \
         "https://qc5.androidfilehost.com/dl/csLxO2CbwlWscApdGgAGMw/1568720136/${GZ18_Folder}/${GZ18}" \
    && echo "Downloading part.. gz19" \
    && aria2c -q -x8 "https://va2.androidfilehost.com/dl/8esp1FUXasJejfyLYxpoag/1568720246/${GZ19_Folder}/${GZ19}" \
         "https://de1.androidfilehost.com/dl/FgrgyLPPYam7SMlKNTz9NA/1568720242/${GZ19_Folder}/${GZ19}" \
         "https://qc5.androidfilehost.com/dl/U67xKwmnL6yQqp70C81A-A/1568720243/${GZ19_Folder}/${GZ19}" \
    && echo "Downloading part.. gz20" \
    && aria2c -q -x8 "https://va2.androidfilehost.com/dl/752XjjbkjzAkAg3qa2-Gbw/1568720390/${GZ20_Folder}/${GZ20}" \
         "https://de1.androidfilehost.com/dl/44fUSDRa3gKWCcAnz4MHMA/1568720389/${GZ20_Folder}/${GZ20}" \
         "https://qc3.androidfilehost.com/dl/752XjjbkjzAkAg3qa2-Gbw/1568720390/${GZ20_Folder}/${GZ20}" \
    && echo "Parts downloading done!"

RUN set -xe \
    && pwd \
    && df -hT \
    && ls -la *.tar.gz* \
    && cat *.gz00 *.gz01 *.gz02 *.gz03 *.gz04 *.gz05 *.gz06 *.gz07 *.gz08 *.gz09 *.gz10 *.gz11 *.gz12 *.gz13 *.gz14 *.gz15 *.gz16 *.gz17 *.gz18 *.gz19 *.gz20 \
        | tar xzf -

RUN set -xe \
    && ls -la \
    && rm -rf *.tar.gz*

RUN set -xe \
    && cd /home/alpine/project/ \
    && ls -la */

ENTRYPOINT ["/bin/bash"]
