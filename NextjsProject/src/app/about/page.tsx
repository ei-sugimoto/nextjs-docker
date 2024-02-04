import prisma from "../../../lib/prisma";

const Page = async () => {
  const res = await prisma.code.findMany();
  console.log(res[0].title);
  console.log(res[0].content);
  return <div>{res[0].}</div>;
};

export default Page;
