# encoding: utf-8
require 'spec_helper'
require 'open_classes/kernel'

describe Kernel do
  context 'null' do
    cases = [
      {
        case_no: 1,
        case_title: 'null case',
        input: null,
        expected: nil
      }
    ]

    cases.each do |c|
      it "|case_no=#{c[:case_no]}|case_title=#{c[:case_title]}" do
        begin
          case_before c

          # -- given --
          # nothing

          # -- when --
          actual = c[:input]

          # -- then --
          expect(actual).to eq(c[:expected])
        ensure
          case_after c
        end
      end

      def case_before(c)
        # implement each case before
      end

      def case_after(c)
        # implement each case after
      end
    end
  end
end
