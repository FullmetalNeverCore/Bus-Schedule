-- name = "Bus Schedule"
-- description = "Bus Schedule"
-- data_source = ""
-- type = "widget"
-- author = "0xNeverCore"
-- version = "1.0"

schedule_31 = {
    [1] = "-",
    [2] = "-",
    [3] = "-",
    [4] = "-",
    [0] = "-",
    [5] = "39",
    [6] = "11,51",
    [7] = "20,42",
    [8] = "16,51",
    [9] = "32",
    [10] = "08,39",
    [11] = "14",
    [12] = "24",
    [13] = "17,55",
    [14] = "-",
    [15] = "02,55",
    [16] = "40",
    [17] = "18,50",
    [18] = "25,52",
    [19] = "40",
    [20] = "46",
    [21] = "43",
    [22] = "23",
    [23] = "24",
}


schedule_holi_31 = {
    [1] = "-",
    [2] = "-",
    [3] = "-",
    [4] = "-",
    [0] = "-",
    [5] = "33",
    [6] = "47",
    [7] = "47",
    [8] = "27",
    [9] = "15",
    [10] = "34",
    [11] = "21",
    [12] = "11",
    [13] = "15,58",
    [14] = "46",
    [15] = "55",
    [16] = "37",
    [17] = "24",
    [18] = "30",
    [19] = "25",
    [20] = "17",
    [21] = "25",
    [22] = "13",
    [23] = "03",
}


schedule_15 = {
    [1] = "-",
    [2] = "-",
    [3] = "-",
    [4] = "-",
    [0] = "-",
    [5] = "21,49",
    [6] = "04,22,33,45",
    [7] = "03,12,32,53",
    [8] = "06,27,42",
    [9] = "02,14,26,45,59",
    [10] = "25,52",
    [11] = "02,29,44",
    [12] = "05,37",
    [13] = "02,30,47",
    [14] = "09,27,45",
    [15] = "16,39",
    [16] = "10,31,54",
    [17] = "10,25,40,57",
    [18] = "09,21,39",
    [19] = "07,26,52",
    [20] = "13,33",
    [21] = "03,29,58",
    [22] = "33",
    [23] = "08",
}


schedule_holi_15 = {
    [1] = "-",
    [2] = "-",
    [3] = "-",
    [4] = "-",
    [0] = "-",
    [5] = "25",
    [6] = "11,56",
    [7] = "26",
    [8] = "06,50",
    [9] = "35",
    [10] = "05,35",
    [11] = "45",
    [12] = "30,58",
    [13] = "34",
    [14] = "19",
    [15] = "05,35",
    [16] = "15,59",
    [17] = "45",
    [18] = "12,56",
    [19] = "50",
    [20] = "35",
    [21] = "02,46",
    [22] = "31",
    [23] = "15",
}


schedule_18 = {
        [1] = "-",
        [2] = "-",
        [3] = "-",
        [4] = "-",
        [0] = "-",
        [5] = "28",
        [6] = "14,59",
        [7] = "29",
        [8] = "09,53",
        [9] = "38",
        [10] = "08,58",
        [11] = "48",
        [12] = "33",
        [13] = "01,37",
        [14] = "22",
        [15] = "08,38",
        [16] = "18",
        [17] = "02,48",
        [18] = "15,59",
        [19] = "53",
        [20] = "38",
        [21] = "05,49",
        [22] = "34",
        [23] = "18",
}


schedule_holi_18 = {
        [1] = "-",
        [2] = "-",
        [3] = "-",
        [4] = "-",
        [0] = "-",
        [5] = "25",
        [6] = "11,56",
        [7] = "26",
        [8] = "06,50",
        [9] = "35",
        [10] = "05,35",
        [11] = "45",
        [12] = "30,58",
        [13] = "34",
        [14] = "19",
        [15] = "05,35",
        [16] = "15,59",
        [17] = "45",
        [18] = "12,56",
        [19] = "50",
        [20] = "35",
        [21] = "02,46",
        [22] = "31",
        [23] = "15",
}

mode = 1

function on_tick()
    if (os.date("%A") == "Sunday") or (os.date("%A") == "Saturday") then
        --ui:show_text('h')
        if (mode == 1) then ui:show_lines{string.format([[<b>Bus Schedule for <i>%s</i></b>]],os.date('%A')),string.format([[Potential Arrive time: %s minutes]],schedule_holi_18[tonumber(os.date('%H'))]),} end
        if (mode == 2) then ui:show_lines{string.format([[<b>Bus Schedule for <i>%s</i></b>]],os.date('%A')),string.format([[Potential Arrive time: %s minutes]],schedule_holi_15[tonumber(os.date('%H'))]),} end
        if (mode == 3) then ui:show_lines{string.format([[<b>Bus Schedule for <i>%s</i></b>]],os.date('%A')),string.format([[Potential Arrive time: %s minutes]],schedule_holi_31[tonumber(os.date('%H'))]),} end
    else
        --ui:show_text('w')
        if (mode == 1) then ui:show_lines{string.format([[<b>Bus Schedule for <i>%s</i></b>]],os.date('%A')),string.format([[Potential Arrive time: %s minutes]],schedule_18[tonumber(os.date('%H'))]),} end
        if (mode == 2) then ui:show_lines{string.format([[<b>Bus Schedule for <i>%s</i></b>]],os.date('%A')),string.format([[Potential Arrive time: %s minutes]],schedule_15[tonumber(os.date('%H'))]),} end
        if (mode == 3) then ui:show_lines{string.format([[<b>Bus Schedule for <i>%s</i></b>]],os.date('%A')),string.format([[Potential Arrive time: %s minutes]],schedule_31[tonumber(os.date('%H'))]),} end
    end
    --ui:show_text(mode)
end

function on_click()
    dialog_items = { "18", "15", "31" }
    ui:show_radio_dialog(string.format("Previous mode : %s",mode), dialog_items, 2)
end

function on_dialog_action(idx)
    if idx == -1 then 
        ui:show_text('Dialog cancelled')
    else
        mode = tonumber(idx)
    end
end