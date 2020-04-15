class  test
{
	public static void main(String[] args) 
	{
			int[] i={5,3,4,4,4};
			int[] i2={1,5,5,2};
		
			double sum=0;
			for(int s:i)
				sum=s+sum;
			
			sum=sum/i.length;
			double im=sum;
			
			 sum=0;
			for(int s:i2)
				sum=s+sum;
			
			sum=sum/i2.length;
			double i2m=sum;

			double up=0;
			

			for(int j=0;j<4;j++){
					up=up+((i[j]-im)*(i2[j]-i2m));
			}
			
			double down=0;
			double t=0;
			double t2=0;

			for(int j=0;j<i2.length;j++){
					
					t=t+((i[j]-im)*(i[j]-im));
					t2=t2+(i2[j]-i2m)*(i2[j]-i2m);

			}

				down=t*t2;
				down=Math.sqrt(down);
				double sim=up/down;
				System.out.println(sim);

				System.out.println(i2m+((sim*(i[4]-im))/sim));
	
				
					


				}
}
