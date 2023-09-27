package dao;//package dao;
import dto.Product;
import java.util.ArrayList;
public class ProductRepository {
    private ArrayList<Product> listOfProducts = new ArrayList<Product>();

    public ProductRepository(){
        Product phone = new Product("P1234", "Galaxy Z Flip 5", 13000000);
        phone.setDescription("6.7-Inch (170.3 mm) 22:9 Ratio 2640 × 1080 Infinity Flex Display");
        phone.setCategory("Smart Phone");
        phone.setManufacturer("Samsung");
        phone.setUnitInStock(1000);
        phone.setCondition("New");
        phone.setRootImage("https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTuF2EWWDOMrXEFkt8enK0wV0eYAGuuXM4yck7fxyT9H7SSGI1wt4uJqyAs0A9nZ94hpxDBc_IufVphDe9B2P0bjFIXb-phxCiJyatjiP1rkU-O0p1alUdQ4-KIcQXWRw-PCibXSLri&usqp=CAc");

        Product notebook = new Product("P1235", "Galaxy Book 2 Pro", 1500000);
        notebook.setDescription("15.6-Inch 1920 x 1080 AMOLED Display Intel Core i5-1240P processors");
        notebook.setCategory("Notebook");
        notebook.setManufacturer("LG");
        notebook.setUnitInStock(1000);
        notebook.setCondition("Refurbished");
        notebook.setRootImage("data:image/jpeg;base64,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efMGgqdUEdFt7C7cVjsD9yDWsLb2B+5OwP8AFQakUjtS08U78xrlqsdqWni+0fFBoRb+1LTxfaPinalp4vtHxQR0UjtS08X2j4p2paeL7R8UEdFv7UtPFPWE7UtPFPWEGpgVldgo9ndbTVvuUyzsyMx7QgktV1wT24bpeGW1cB4loBqxxqY1LaOHRGqpAejrCF43jrCD6Ys3hwDmkEEAgioIORHMti6F+yna77W7usHSRYENa/MFjpIZO9uXQW7l31AWq1smuGFzQ4HQgEdRW1EFHa8EtnOMuud3JOZ7DZgnqC09xGy+RWHo2rsSIOu9xGy+RWHo2p3EbL5FYejauxIg673EbL5FYejancRsvkVh6Nq7EiDrvcRsvkVh6NqdxGy+RWHo2rsSIOu9xGy+RWHo2p3EbL5FYejauxIg673EbL5FYejancRsvkdh6MLsSIOu9xGy+RWHo2p3EbK5FYejauxIg673EbK5FYejancRsrkVh6Nq7EiDrvcRsvkVh6NqdxGy+RWHo2rsSIOu9xGy+RWHo2p3EbL5FYejauxIg673EbL5FYejancRsvkVh6Nq7EiDrvcRsvkVh6NqdxGy+RWHo2rsSIOu9xGy+RWHo2p3EbL5FYejauxIg673EbL5FYejat1lwS2c0y253cEZHsNmSOsK8RBqsrJrRhY0NA0aAB1BbURAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQf/Z");

        Product tablet = new Product("P1236", "Galaxy Tab S8 Ultra", 1100000);
        tablet.setDescription("14.56-Inch (369.9 mm) 16:10 Ratio 2960 x 1848 Super AMOLED (239 ppi)");
        tablet.setCategory("Tablet");
        tablet.setManufacturer("Samsung");
        tablet.setUnitInStock(1000);
        tablet.setCondition("Refurbished");
        tablet.setRootImage("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUSFRgVFRIWGRgZHBwcGRwZGhgcHBoYGhoZHBoaGhwcIS4lHSErHxwcJjgmKy80NjU1HCY7QDs0Py40NTEBDAwMEA8QHhISHzQsJSc6NDQ0Nj00MTU2MTQ9NDQ0NDQ0MTU0NDQ0NDc0NjQ0NDQ0NjQ0NTQ0NDQ0MTQ0NDQ0NP/AABEIAMIBAwMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABAIDBQYIAQf/xABEEAABAwEEBgMMCQQCAwEAAAABAAIRIQMEMUEFElFhgZETInEGBzI1UmJyobHR0vAUF0JzkpPBwuEVNGSCU7IjQ/Ez/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAECAwQF/8QAJxEBAAICAgIBAwQDAAAAAAAAAAECAxEhMRJBYXGh0SKRsfEEQlH/2gAMAwEAAhEDEQA/APsyIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiLX+7O+usbq9zHFriWt1hQgONYORiROUoM6XjaOadI3yhzC+DkA1NTwzXhDdg5BE6feekb5Q5hOkb5Q5hfAyG7ByCocG+SOQQ0+/9I3yhzCdI3yhzC58c1vkjkFQ5rfJHIIadDdI3yhzCdI3yhzC52LW+SOQVLmN8kcghp0X0jfKHMJ0jfKHMLnAsb5LeQUd9rZgwdSRjQIadLdIPKHMJ0g8ocwuZTbWXm8v4VJtbLzeX8IOnOkHlDmE6QeUOYXMRtbPzeX8Lw2ln5vL+EHT/AEjfKHMJ0jfKHMLl7pLPzeX8Lwvs/N5fwhp1D0g8ocwqH3hjfCe0drgFy+X2fm8v4QWjBhq8v4QdPfTrL/ls/wATfeq2WzSJDgRtBC5f6dm0clQ60s89Xl/CDqBt8s3GBaMJ2BzSfarvSDyhzC5bNvZmktVPS2W1nIIOp+kb5Q5hA8HAhcsdJZeZyCv2MMIew6pFWuZQjeHNqDvCGnUaLC9yd9db3OwtHmXuYNY+URQuO8xPFZpECIiAiIgIiIC1bviGLm702e1bStT75Ji5O9JntQfLBaRBR14O75n3lROkVBeiV+0dOZVtpgRKtF6oNogvm0VBerBeqDaIJBeqC9WTaKgvQXi9Yl9zeCdXUIJnrY+xTi9Ul6CF9FfsZ8/6rz6K/Yz54KaXqkvUGkP6M/zPngvPoz/M+eCmF6p10NIn0Z/mfPBefRn+Z88FL115roaRfoz/ADPngn0Z/mfPBStZeayCL9Hf5nzwXpu7/M+eClayByGkA3B5zbzPuV+92D7R2sW2TKNEMbqt6oAnVAxMVKlByqBQ0xwuL/N5n3Kdd7LUZqztPPYroKOwQdA9wXi+7eh+4rYVr3cF4vu3ofuK2FSgREQEREGH7qdIOu1zvFuyNezs3uZNRrAdUkZgGDC5kvmn7y9xc+8WznGpJtHYmtADAG4UXSHfA8W3v7py5avGJ4exBO/rVt/zW35tp71S/S9q4QbS0I2G0eRyJWPRBN/qL/Kf+Irz+oP8p34ioaIJv9Rf5T/xFetvzz9p34ioKlWDCYaBJOA2k0AUSmE1j3uE67uZ96pdaPH23cytku+i2sYA+pArhHNQLS8WbD1bJs8J9i54zeUzEOmcMRETKHc7u+0Em0c0ZVJn1qUdGP8A+Z/r96rsdKtJq0t9EhwnscB7VN/qzW0Y2Xb2gD1FVvkyxPDSuPFNeZYq96PtbNod0hINI1iDO4SZWPc94xe78R96yN7vbrQlz3SfUBsAWGvF5mg5+5a0m0xywyRSJ4V2l6c3/wBjie0+9W/pr/Kd+IqKr12sC90LXpj3PDJXCztbWvSOa0YuJceAAxKuuuz8rV0bSThtgH5kKWbZwDWtENGTYGqOM19tSvRrO1QGSZiN/HDisJvbe/TpjHXWvaH9HdlbPjj6hrSs4/uWe0wb0/AT1Zr2a/al00WHGSaV1tkA7+2Fk73pBjtcNcCWmH8qduCxtnvMxFJ+reuCkVmbR9OWuaR0W6yY57bxaO1coia7dYrX/ptp5b/xFbRebbEHDtxkwecxxUa7dy5EvvDxY2IcQC7wnCfsN29tOS3pk1X9UuW+Pdv0ww90dbWrg1jnuJyBPr2DeszetGOs2gm8uJ+1GAM4DrTxgSptvp67XVnRXWyBmQ97oLnRMEma1yoBktVvWkH2nhO4BTE3vO44j7yTFKxqeZ+0PX3l7TS0ceNDsxxCyl2tddoccx68D7FrwWcuHgN7P3FbMU0L12CpC9OChLoLuC8X3b0P3FbCtd7gfF929D9zlsSlUREQEREGt98Hxbe/unLlu38I/OS6k74Xi29/cuXLdt4R+ckFtERAREAQV2YkrYu5a4m0tS+OqwE9rjQAcJ5LF3W6wCXcvetu0e02FgKde0kjAarQDqndhPFYZr8aj26MFNzufSrSt6Aa5rYp1aZuOPKCtYc3WmuGVMc/1WYvpLurEwCa4TApJ4DmrLbpDdZ5DRWrjGzLksseqw2ybtKHdbuJJcDT1lXL3eGMGWdMzVRr1pRrerZictY4cB71h7R5cZJklbRSbTuzG2SIjVV23vBcd2xR0RbRGmEzsWYuVnAHVI1sTXafVlO9Y67WWs4DJbJo+4vtB1Wg0zECTAlzsgMZ2NzwWWW0RHLXFWZnhDt7w1rg0NBdFamBOII2wBz3KqytXEEFzp82kkkUGrjU/M1n3a72DHFlnZuvltmRLbIGZqQdZ9RMkgFZ662N7Dg02ljdmz4Fixg4F2M8VhfJFY4+7etJtP4VXTRNt0Ya1rgXVc40E1zcoLdF2V2Djb3ljBTqsOu6k7jE/qspersw+HaWtpuc9xFNgBCxN7c1jTqMa0xjq1zzNcvZw5cUzO+e++HRk1GvhR/UdWlzuZ1seltgJEQNZodQY49mMLEXjRltbuL7e8Ak7JcawIGA9eSqtbw91HOwrEjGkHtj5orQeZk1w3mvs7CMl3UpMcx+Zcd7RPf4hVZ6EsBBc97tsQ0ew+1VPu9gwDVsKyKuLnSKViYGKrY8z4VMa/NcJXr3wInM4j2E44HmcV1UxzPcua94jqFi2Y3Vfq2LKMcZDRTq4zkQo1w8BvZ+4rLW1rrWL601XYVxaYWKuHgt7P3FXy1iutKY7eW0sKo4KlqrOCxauge4LxfdvQ/cVsK17uC8X3b0P3FbCpVEREBERBrffC8W3v7py5atsSupe+F4tvf3Lly3a4oLaIqmNJMASUHrGkmAJKn2NiGCcTtj2KizAZQVccTkNwVYZPhHgs7Wa1rr6s3oC49K7WcJYyp3mRDd+0/ytgvzC+1cA0mIFQIgCuUAb96uXG69FZsswKBoLtmsR1pOOatadvwsrJzmwaAHtwbjiuCbze/H0h6MUilOfrLDaU0i27ANbD7QgEl2A3xOOa1W83p9s6XOJJ+cFbtrUvcS4yTiUsxvXfTHFY+XnXyTafh4GUQMV4tnDfhU9vKSp2jNF214P/iYXREnBo3FxoDCtNoiNzKkVmZ1DG6hrwy27kDIgmK/InYtrb3OssuteLw1urNGQSa06xpuwzxUi7Fll1rCxgSf/JaVcTlEjPYBWaSspz19ctq4J/24YzROgneHbHUZiAfCcKmgOAwkmFlrWbVkEmxuoMQ3/wDS2ccDXI7TllGFy0LWde1c5zj9kxrbPBMw0HI07cBj7059qSXwTk0QdUead3rncufdr28p/p0arSvjH9pNjf8AVHR2TejYJkNzwGs5+LjjU0pTJTNGOIJc5xJAMGZyEzsJzEZLHWJJoJk4nHVAIzp6levF41QGCsbTuJrTaSq3jy4j2mk+PM+l293rWdO+R2jGZrisfpK2AGqILiYFTPDLkf58tryG5y6W5ZnacsZ4LH2r9cySZz3ZfqDxnt6cePTnyZHjpEmJk5bRWgmeexXmAzNYA2HKK4VyruwqrLRLYA2GScYnMU54KTYtmIbBdsAxFYG8xjwyC66Vcl7AZIAim0GDiSMqHBVi6OcIiKYuoKRXsrirtrbWd3BLy7pIkMBGdOtjGGBy2rX73pJ9oNXwWTOqMOJxPFazatVIibMjer3Zsa5msXGCOrBaHQQKzXHKVbuHgt7P1Kwizdw8BvZ+4rG1ps0rEVTGqvJUtVZwVF3QHcF4vu3ofuK2Fa93B/2F29D9zlsKlUREQEREGt98Lxbe/uXLlxzCTABK6j74Xi29/dOXNVwAlxz/AEhVmdRtatdzpGbdDMEgetSW2QaKY5q45sHarb/nBZzaZaxSKqJyV+6WZe9rfKIFd5AVlrf/ALu+fYszomxLHtcQJLhqyc5ACredQtjruW3Xy0Imvs2fwsDfbQPa5rj1TQ45nhhAPBTtLOOsW8aThy2/NFgL1bHAAl1KRnOI45rmw06l15b9w1q2sy1xacQSDwKm2jIpThXnSnrVrSDta0c4VBJgjAgUmnYpVoxxdqt7MOZO4LumetvPiO9PLldHW1o2zaJc4wKmB5xOYxnNb7pvSVjdGi72bg0WUCkFznRJMDOTJJxWO7mbsGWlmxmJe3WfUF2rLyK4DqmmcTsXl4s22TnWmqH2j3OLnEg6usSYbk0GYkV20ouLJaMl9T1Hr/rrpSaV3Hc/ZGs7F9odZtiGin/ktzWMZa0S40rMkGKq2+8hjpaXWjwB13NAjWJBFmwUbMVNTjUKm83vXoSZrOG8zStSZmtRmsZbOJNDnNMa0AEihEb6T2LWtdqWnXS59JLiSSS44nbWklxnPHd2qRdmF/VaYAzyDc99CoV3ZrHqyDsimMGZ9yy4ZqsDGnLrHaRSafOKm064gpG+ZW3OFGsBA2+URv315dqx1rfoJaw4RJO8idwrn7EvV51jDQ2KTkazXEUw25qGwBwBxyOWGRjHEDZXLPSmPUcssmSZnUK9TIjMEyTQ4Vk41G+uSuWBGNMiIgUrWdmEcaVVLSYAOU5muBoBQGFeZB+1BiYgEYEYRTAcslvWGFpV2bYIMDGK4YTBA7TtwzXt50oLEFtn4cmXGuruG+g/XBRL1e9RoawkGASQRI2im/5qsQrzbXEK+O+1b3lxJJJJxJqSe1UIizWFm9H+A3s/cVhVm9H+A3sP/YoJrQq8lS1VxRQs+/dwn9hdvQ/c5bCte7hP7C7eh+5y2FSqIiICIiDW++F4tvf3Tly621LXSF1F3wvFt7+6cuYmXbX8E9bYaDgcuKide0xvfDIMbrtBCt2jHNNQV7o2yc3WBaRAkU9m1Ze62fSDV1QZ+arlvbwn4dlKecfKHdLu0AveQGip37BvKnaKvGvalw8Gz6wwjWMhgrnMngsd3QXlrHCyZ9kVIOboJrjkPWp+jmiysA52L5cTlrHwAeEH/YprdfKffRvVtR67XNJ390lg8KJNZAEYezBYO8W5s5qC4jt1QcOwxlx7bt4tNU1PXNaYNBwJ5rHNZ25Ht2rWlYiGN7TMq7lZAnrYYup9kY8feO0T7haa1qTQaxoRjJrA2dqtdAQBZtEucagVJNOrhNP0MrIaKupDi2zI1zRzhVtm3MA/adXKgwriIvMamU0rO4hsehbVtm976BtkC0nAG0eQ3HAard9ZPao2lrLUc4GpmtIg7ZwExI3zjRQr1eAX2N0sata4FzqklwILt8iCY2jKFP0hZutHkyADhhQxsGOI2Yhcfj428p9urflWaw1y8OINSa0gSKGonEVMjH+aLFj3YEnbjWTBAMUw9azbtHMZiTEGSYjPE9nsWPvF/Yxp1GjtPg/6jPLmMV0VyeXFY2xtj8ebTpdsbJtk3Xe5o7aGcaHEnmsfer9rkhoIadh6xETJj9NyhuvbnGS7WJIiTgK5YZ4epeYEE7BjQDE0JrQDdXetq49Tue2V8u48a8QrswYqTjtOQzwjPmqmNIcSCKg1iDtiBiJz3bKGls7IEEEYSIknVxz402qtrqiTApq1E5gVptHBaxDCXnS4DwpNYApuMZx24bV454a3WcQTkJOM5AUiQfmqNtQ3VH2TUTMxXKaiOrwUG8WpMN1pApiSDjWvardI7WnvLiScSqURVSIiIAWd0d4Dew+0rBBZ7R3gN7D7SiYTWK5FFSwK5FFCX3ruE/sLt6H7nLYVr/cL/YXf0P3FbApVEREBERBrffC8W3v7py5juzyOXuXTffC8W3v7py5hsD1hvVZ6Wr2zV2vUNoOE/wALN3FwDHPaKwfYtWc7VgbfYti0YHC7vmZh8djW5cVxZa8b+Xo4bdx8NVutgba1DScT1jumpWyaXvQH+sECsEmobkCGivFU6JuYsWutHNAJBIbmGxidhOzKVEFi63fgdUHrOMxJq6vZqjhK2m0Wn4hz1rNY+ZVXDRzXQ61LiXHqta7Vx+0TB5Ae2kq8aIsrMBxtXMbjDmtc7gBA4x7VIu9o3X6gD3mRrmYwBOqMgNuEEYiFavrmMcXWj9Z00EST6PPZT1LLyvNvbTxrWvSgWDSM2sIqYhzhQ1djqxBoAKqNfdJNa0Wdg0AbY2xgK1nPHDtUS83p1q6ACBNG1OQ9sCiyF0uDWQ58EkTDpgUOImePtWmojm37M9zbiq7oe5dE02jvDdgMwyhJ2g+7FT7O+RJ35HeBFKSMOCgW95OQ1W9giMTIrj7eSsm1Jz92ABrMkim/FZWrN+Za1t48Qu6dvHUY1roDpJJgzhE4xBWvPdIIl1TJnCB2GkEbFlNIu6jTBBacKfaxNBEzCwhmmHaTEyYmeC6cNYiunNmtM22qDortk5TNY2RXir+sTU1MHyqiTu2QR/KjGBEEU3jtn9K7F7Z2kGY2bsKxAp889mK+SIiCDBEVHYCKYyZ9HndDqiDsEzQTSZmDQ7MNk0htfj/GJz9UKpzooCdWIJpJGyAcJnmphV7eDmIGrSM5kjfSBhPtUNXHxSK0r2ycKK2oSIiICIiAFn9HeA3j7SsC3FZ/R3gDj7SiYTmq7FFbaruShL7x3C/2F39D9zlsCwHcN/YXf0T/ANnLPqVRERAREQa13w/Ft7+6cuXAV1H3w/Ft7+6cuWgUTDJNGuARitpuD4DWzMCD25netRuNrBjJZ672hGC4s8TMad/+NaIna9eQ1kutHEgmuEuImBls3cVCu/SW7m/ZswWmNokH/Y5bN2Kv6SstdzHGojA+DINXHgRjsUZ99jqMwGOEk7gppzXcd/wrfi2p6/lOtb+yykWZBgQKeDO0/aNfasI0PtXkSSTWv6nIe5XbOwL3GIFTJ2S7P3KdZOawQ0UO0kSa7q4xRXiIrHHbOZm089K7pd2WcEOGsRM0GE0b/PZuR9uczXYSaV2EU9kViqjW14cYrOUCDQxMA+/YrPSVHWAwmIqBQERjRNe5T5a4hc1poNsCMYxp6ke4Ybc8NuVZwjirbnUIkTI2U8IduIwVLwNgB34mgoa1wU6V2rvImzcBkBEYU3LCF5iP1OGOHLksy93UeJ4zgRMzP/1YIFa06Y37CVUDiqUlXUVTur85KvWBFQOFNitIUBERAREQEREHrcQvpfcX3DW9+uzbdlrZNbrObD9aZDq4NIzXzVuIXRfeX8WN+9tP+wQYAd629f8APYc3/Artj3rrwXDXvNkG5loc4x2ECea+sIgiaMuTbvZMsWTqsaGicTGZ3nE9qmIiAiIgIiINa74fi29/dOXLBXX2l7g282FpYPnVtGOYSMQHAiRvGPBfDr13mb81xDLW7uZPVcXPaSMpbqmDuk9qD5xdzVZ64OJA2hbGO89pIYOu/wCY74Ffs+9TpVuFpdx/ufgWWSnlHDbFkis8tZ0pamGiNvrhYyz6zhl8jbwW823ep0q/wrS7n/c/oxUs70ulGwRaXcR57vgUUxzWNJvli1ttbcwDLPbAnt3qxaPgiCchTlURsrPyNu+qrSv/ACXf8w/AqT3p9KeXd/xn4FMUmEWyRPTTNaTWCZE4VkQQRxXjnYjfE1iJg8IAW4nvRaT8u7fjd8C9Pej0n5d2/G74FbxU8mmhodgaDdXKccdqF2M4bt0V7aLcR3o9J+Xd/wAx2X+iq+qTSfl3b8bvgTxT5tPvLgLMkZ5kY4RHzksGvpj+9LpMiC+7EbNd0f8ARWvqd0jtu35j/gU1jStp3L5wi+j/AFOaR23b8x/wL36ndI7bt+Y/4FZV83RfSPqd0h/jfmP+BPqd0h/jfmP+BB83RfSfqd0h/jfmP+BPqe0h/jfmP+BB82RfSfqe0h/jfmP+BPqe0h/jfmP+BB82RfSfqe0h/jfmP+Be/U7pD/G/Mf8AAg+bsxHaui+8x4tb97af9gvn1n3nb/Il12bv6S0McAxfZO5HQI0fdbO7tdrFslzojWe4lzjGQkwNwCDOIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiIP/9k=");
        // 위와 같이 상품 초기화 하고 아래에 상품을 추가

        listOfProducts.add(phone);
        listOfProducts.add(notebook);
        listOfProducts.add(tablet);
        // listOfProducts.add(상품명);

    }
    public ArrayList<Product> getAllProducts(){
        return listOfProducts;
    }
}
