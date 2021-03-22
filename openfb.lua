require("TSLib")

accounts = {{
    email = "100058901794134",
    password = "DVxbrqqo671"
}, {
    email = "100058958122735",
    password = "FRiniteu975"
}}

function scroll_up()
    moveTo(286, 465, 286, 340, 10);
end

function scroll_down()
    moveTo(286, 340, 286, 465, 10);
end

function login(username, password)
    while (not (isColor(401, 231, 0x587eae, 85) and isColor(353, 266, 0x053d86, 85) and isColor(231, 1252, 0x81b6f9, 85) and
        isColor(231, 1267, 0x1877f2, 85) and isColor(536, 1257, 0x3c8df4, 85) and isColor(536, 1271, 0x3c8df4, 85) and
        isColor(715, 1227, 0xe8f3ff, 85))) do
    end
    tap(232, 532);
    if (not (isColor(233, 1163, 0x2c83f3, 85) and isColor(232, 1179, 0xafd0fb, 85) and isColor(260, 1182, 0x1877f2, 85) and
        isColor(269, 1169, 0x1877f2, 85) and isColor(281, 1163, 0x4d96f5, 85) and isColor(281, 1179, 0x3b8cf4, 85) and
        isColor(281, 1163, 0x4d96f5, 85) and isColor(281, 1179, 0x3b8cf4, 85) and isColor(287, 1179, 0x73adf7, 85) and
        isColor(514, 1165, 0x1877f2, 85))) then
        keyUp("End")
        for i = 1, 14, 1 do
            keyUp("DeleteOrBackspace")
        end
    end
    inputText(username);
    tap(40, 481);
    mSleep(2000);
    tap(127, 625);
    inputText(password);
    mSleep(2000);
    keyDown("ReturnOrEnter")
end

function logout()
    -- while (not (isColor(1157, 133, 0x6a6c70, 85) and isColor(1157, 145, 0x909194, 85) and
    --     isColor(1157, 158, 0x74767a, 85) and isColor(1188, 159, 0x6c6e71, 85) and isColor(1188, 145, 0x8c8e91, 85) and
    --     isColor(1188, 133, 0x696b6e, 85))) do
    --     scroll_down()
    -- end
    -- tap(1167, 143)
    -- while (not (isColor(63, 664, 0x252d32, 85) and isColor(37, 696, 0xaec2cd, 85) and isColor(54, 685, 0x425157, 85) and
    --     isColor(97, 681, 0x050505, 85) and isColor(103, 681, 0x050505, 85) and isColor(118, 672, 0x121212, 85) and
    --     isColor(144, 694, 0x050505, 85) and isColor(164, 688, 0x0d0d0d, 85) and isColor(194, 674, 0x050505, 85) and
    --     isColor(202, 671, 0x050505, 85))) do
    --     scroll_up()
    -- end
    -- tap(157, 686)
end

runApp("com.facebook.Facebook")
for i = 1, 20, 1 do
    x, y = findMultiColorInRegionFuzzy(0x2c83f3,
               "-1|16|0xafd0fb,27|19|0x1877f2,36|6|0x1877f2,48|0|0x4d96f5,48|16|0x3b8cf4,48|0|0x4d96f5,48|16|0x3b8cf4,54|16|0x73adf7,281|2|0x1877f2",
               90, 0, 0, 749, 1333)
    if (x ~= -1) then
        tap(x, y)
        break
    end
    mSleep(1000)
end
toast("x:" .. x .. " y:" .. y)
index = math.random(1, #accounts)
login(accounts[index]["email"], accounts[index]["password"])
mSleep(5000)
logout()
