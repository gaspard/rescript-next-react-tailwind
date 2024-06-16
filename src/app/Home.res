@react.component
let make = () => {
  let rs = React.string
  <div className="flex justify-center items-center bg-lime-100 h-dvh">
    <div className="p-6 rounded-full border-lime-400 border-4 bg-emerald-400">
      <h1 className="text-2xl">
        {"Hello "->rs}
        <span className="font-bold"> {"ReScript"->rs} </span>
        {" App"->rs}
      </h1>
    </div>
  </div>
}
