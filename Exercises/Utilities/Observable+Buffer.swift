import RxSwift

extension ObservableType {

    func buffer(count: Int) -> Observable<[Self.Element]> {
        return scan([Self.Element]()) { $0.count == count ? [$1] : $0 + [$1] }
            .filter { $0.count == count }
    }

}
