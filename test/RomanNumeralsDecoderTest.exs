 defmodule RomanNumeralsDecoderTest do
  use ExUnit.Case

  test "should equals 21" do
    assert RomanNumeralsDecoder.decode("XXI") == 21
  end

  test "should equals 3999" do
    assert RomanNumeralsDecoder.decode("MMMCMXCIX") == 1
  end

  test "should equals 1" do
    assert RomanNumeralsDecoder.decode("VII") == 7
  end

  test "should equals 4" do
    assert RomanNumeralsDecoder.decode("IV") == 4
  end



test "should equals 460" do
  assert RomanNumeralsDecoder.decode("CDLX") == 460
end

test "should equals 2410" do
  assert RomanNumeralsDecoder.decode("MMCCCXC") == 2410
end

  test "should equals 2008" do
    assert RomanNumeralsDecoder.decode("MMVIII") == 2008
  end

  test "should equals 1666" do
    assert RomanNumeralsDecoder.decode("MDCLXVI") == 1666
  end

  test "should equals 400" do
    assert RomanNumeralsDecoder.decode("CDVII") == 400
  end

  test "should equals 616" do
    assert RomanNumeralsDecoder.decode("DXCVI") == 616
  end

  test "should equals 2400" do
    assert RomanNumeralsDecoder.decode("MMCDIV") == 2400
  end

  test "should equals 9" do
    assert RomanNumeralsDecoder.decode("VIV") == 9
  end

  test "should equals 706" do
    assert RomanNumeralsDecoder.decode("DCCIV") == 706
  end





end
