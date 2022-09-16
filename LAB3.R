#problem-1
marks=c(23,34,55,77)
l<-c()
m<-c()
for(i in marks){
  if(i>50) m=c(m,i)
  else l=c(l,i)
}
print(l)
print(m)



#PROBLEM-2
l<-as.integer(runif(10,1,100))
l
s=0
for(i in 1:10)
{
  s=s+l[i]
}
sprintf("Sum of the numbers= %d",s)



#problem-3
l<-as.integer(runif(10,1,100))
l
o=c()
e=c()
for(i in 1:10)
{
  if(l[i]%%2==0) e=append(e,l[i])
  else o=append(o,l[i])
}
sprintf("Even numbers:")
print(e)
print("Odd numbers:")
print(o)



#problem-4
n=as.integer(readline("Enter a number "))
f=1
for(i in 2:n)
  f=f*i
sprintf("Factorial of %d is %d",n,f)

#Problem-5
n=as.integer(readline("Enter the number of students: "))
cat("Enter the marks seperated by space row by row, Enter empty row")
nums <- scan(stdin())
IQtest=aperm(array(nums, dim = c(4,n)))
IQtest
sum=rowSums(IQtest)
sum
g1<-c()
g2<-c()
for(i in 1:n)
{
  if(sum[i]>=180)
  {
    f=1
    for(j in c(1,4))
    {
      if(IQtest[i,j]<=30) 
        f=0
    }
    if(f==1) g1=c(g1,i)
    else g2=c(g2,i)
  }
}
sprintf("Genius Level 1 eligible students: %s", paste(g1, collapse=" "))
sprintf("Genius Level 2 eligible students: %s", paste(g2, collapse=" "))

#Problem-6
n=as.integer(readline("Enter size of list "))
l<-c()
s<-c()
for(i in 1:n){
  x=as.integer(readline("Enter the element "))
  l=c(l,x)
  s=c(s,x*x)
}
print(l)
print(s)



#Problem-7
n=as.integer(readline("Enter size of list "))
l<-c()
for(i in 1:n){
  x=as.integer(readline("Enter the element "))
  l=c(l,x)
}
print(l)
for(i in 1:(n-1)){
  for(j in 1:(n-i)){
    k=j+1
    if(l[j]>l[k]){
      x=l[j]
      l[j]=l[k]
      l[k]=x
    }
  }
}
print(l)



#Problem-8
get_matrix <- function() {
  nr <- 3
  cat("Enter space separated data row by row. Enter empty row when finished.\n")
  nums <- scan(stdin())
  matrix(nums, nr, byrow = TRUE)
}
m <- get_matrix()
s=0
for(i in m){
  for(j in i){
    s=s+j
  }
}
print(s)
