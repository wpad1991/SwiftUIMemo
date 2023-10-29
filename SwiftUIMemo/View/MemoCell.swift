//
//  MemoCell.swift
//  SwiftUIMemo
//
//  Created by jisu kim on 10/29/23.
//

import SwiftUI

struct MemoCell: View {
    @ObservedObject var memo: Memo
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(memo.content)
                .font(.body)
                .lineLimit(1)
            Text(memo.insertDate, style: .date)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
}


#Preview {
    MemoCell(memo: Memo(content: "Test"))
}
