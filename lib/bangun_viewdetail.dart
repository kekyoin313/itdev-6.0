import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFC107),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'BANGUN.in',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),

                        InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(16),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.amber[800],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Jumlah Project Berjalan',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  '200 Project',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      'Tampilkan Project Berjalan',
                                      style: TextStyle(color: Colors.white70),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 14,
                                      color: Colors.white70,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Icon(Icons.help, color: Colors.white),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    MenuButton(
                      icon: Icons.inventory,
                      label: 'Manajemen\nAnggaran',
                    ),
                    MenuButton(icon: Icons.map, label: 'Maps'),
                    MenuButton(
                      icon: Icons.picture_as_pdf,
                      label: 'Cetak\nDokumen',
                    ),
                    MenuButton(icon: Icons.person, label: 'Profile'),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'For You!!!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                height: 230,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    SizedBox(width: 16),
                    NewsCard(
                      imageUrl:
                          'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMWFhUWGRgaFxgYGBoeHRsXGBgeHRgdHhgeHSoiGRolHh8aITEhJSkrLy4uGR8zODMsNygtLisBCgoKDg0OGxAQGy0lIB0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAEBQMGAAECBwj/xABFEAACAQIEBAMFBQYEBAUFAAABAhEDIQAEEjEFIkFRBmFxEzKBkaFCscHR8BQjUmLh8TNygqIHQ5KyFRYkJdJTY3Ojwv/EABkBAAMBAQEAAAAAAAAAAAAAAAECAwAEBf/EACMRAAICAgMAAwEAAwAAAAAAAAABAhESIQMxQRNRYSIyQnH/2gAMAwEAAhEDEQA/ALs9JW3APn/XpiD9gWZViveCR9RH1nHVLiFJv+Yvx5fvjBYGPW0efswDHQxkY2BjANxiSjYycajHYpN2wrYyTG+XaRjt1wqp1mU3wUMyYxzS43ei6mqBs4IO2B4wbUht8QvSjF4ypUSmt2QRiTVbGoxsDDCE+WeMEuJGAlxOK3TEpx3aKRkqpnDpGJKLgCOmInM45nBxtAujqsfliPTjMbBw1UC7OcZOMONYItkq1MYXxFOFfFuOUqKay6gH3e7/AOUdf8xt64V0hk2xu1UDzPYbn4YqviHxxToSqgVX/hVuUHrrbrH8KnyJxR/EvjV6xKICim0Ld2B/iff/AEiB5HfCvh3AatbmqEqnbqcRk7KxjXZrinHa2aqaiSYJMKIVfRRYff3JxNw/hOph7S+5A6emG2aya0qD6FAgTPeCJ+k4DyFYlww2G/oRb63gYQouh9RoAU2gDlK9OhDT9QMaNhJvO342xtaDsBbSf4uxIkQvcAi5+Q6AtxFEUfafrH4tgNvwCoYcMrOtVXEgcwnqDptbaN/liz1uE06nMyQR9uiea8bgCW+KkYouV4pUIZhAKtTIgbe8OvmRi/5OoCqkTcDbzHYT92Faa2G70xLmuEN9llqrAs3K23eNDT6Liqca8IJq5eRySQOh9B+WPR6+Zy+oo9b2dSBZouOkMR9xxxokFWKvJO4kG9o3tHfUcDJ+gxXh4hnclXomGFu4uMQ0qi7mWb9dOmPbqfDqIYOVIANwGkEEdeoB6HbFY8f+FEFMZjKJcFtaqsyLQeTrvt8cMpINMoX7Q56D4kT9+MwKH8yN7A+eMw2QlHsFLirtarkqw2mED9ehE/fbBftcuNw9E+YdI+MaQPjBw0oDr+vP9eWJwMddNEcl9AFFpBNLMB4Gx0t9RcHDTI0ywOqJlhb+ViJif1OAM9kqTU3LU1JCsQYFrYB4bWNOjTgnYTJJ/wCa5O5tZOmEm2h4pMtmWy4An646qV42E4X8MzharVQnlTSAP9CfjqwTmDeBtiUU5PY8mktG69QEbXxCrRjU4zF1FIi3s6U4k1DEYONzjNGs2yjHMY6GMjGAaGN4zGYwDJxycdYkpUwd8BugpWRIk+uOly7H088E1nC/q9v1v0xtM8sXt+v169JxJ8r8KKC9BCmBs1WFMS2wuewHcn7K+ZxXvGPidKDKFqSbnSjDVcWJsQo9b32x5txHj+azRFJWYrJIWSVEybsbsRG5NukYPyGXHZcPEnj1ElaBVyPtEcqkfwj7Z8yI2gYoujMZuoXaeY81Rtzhrwzw2oOuqdbdOwxYKdECIsOw/VsK232Oko9CfgvCKaIrQWYwSSCd/wBRhuFUdD8jjMpS5B5T1/mOJPZgG4wEERcZy6+xqMoZSATZm09zI2+YwZwdl9kpPMVkA7WJJ67C/wCuhWcJNN17qwj1GBsk7aHCAEhQ3oF0g/8Ad26HEpupIeO4sYGubE2Aj0tv67dgNonFcsWK001XN+kT0PX4YsmV4J7ZAzO3MJnpM9vzOIWy0WkbxA8v0f0MNdi9CheGkI7MbhdUDblYE7b2n+mGS8bq0SoDAqVBhhN9jffcHrjeZqKqtq5ZVxfeShA9Lx+jhXWUvTpOonlI+bFh9+GVPsVtjvN0GzgFcDSY0EC/u3m8d/PDLw8DTp+zeAwJgG0g3tMH+/xAng6oRTdSCCGB84I+fT9bibxWf3dNwfdcjaDdZ26bf06lX3iHyy0Cooy9R3BPs+eQLgRcifQ2/thLkayMupGJGpxquCeY7nqY7g/LA3BixRlLPDpFjuLgjTsRcfhGIQy5UQdRRiSCBcW9bj497XwteBv0Lr01LEsiMe7U5J+IXGYg/wDFKRuKxA7cw+mnGsHAGRaKLqw5CGHkQfuxIMA1Muxu1FW/yuGPyqKAPngqhV2BVwf5l/8A6WV+uOxS+znaOOJf4NX/ACN/2nFbo54MhUD3DpJ/012H1Iwz8a5tqWSquu/7sX7PVRT9CcVjgtYv7aYBFQWt2I7jq/bAkx4K0XPhTfvswf5vuZh+GGjN3MYScAYmrmJERUbv1q1PLG+N54aNFwWDwfRW/KcFAfY5F9jjcYU8DuAe+s/UYcRgis0MdAYCq5wrVFOBBIv8vz+mGKYDYKOQh7YkFPvib2sjHAbEsmUpGBRiJhiR3nHdKl1xrrbA1bpEK0ycUnxP49pUZpZfTWq7FgeRD6/aPofj0xZvF9EvRWkEZlckVND6X0ASdIJhj6yAJtjxrxUMnSRf2b2stM6yrKsRYsCSW8r7mWOwT5L0UXEuy0cO8fuFUV2pMx97VNMkgnZ+ZD097RHSMLvE3j2sW9nQVqUgcwZWZtQnlZSVWbjUpJPU4o+Wy1SpBFgftH8B0xZOC8HRGUgyxJn4qT8NsIijSFmX4XVqc9SQCbzvJ3Pc/GMWbhOVVRAEQ/3pjriyEKFBgmoL/wClt+2CshwStRHO6sHYaYmxVTqFxvEf0wHOKdMKi3GwsY3ptPSfu/uPnjs0msVU2uetj9wx0SACHYIJBljABsCPUg/7cFzVCqDsEyzchH8zD/ccdne3lgpuGOP8MEhjOuopQDUeiXZu9wo88T0MolJtTO9R1BMDlUE2gKN7GeYtvvhflSG+NirNkUxNSVBBgQSTboBucQcIqDWAbakCbdWOn74+WI+PcYZKtMe2ULewEnYxYQT03YD1xmXy3tFQyYI6WJgsRMeoxKU8mh1Gkwylx4JTVF9640qJbc/L6YVZ3i1QErp0mCT3ve52+Xbyw2p5dKfuAC/x/v6kdbWOK74hB9qImCgEeYZv6WxVRJOQv4XWZ6tNnaSKiT5AtBjtacXPwbTigUMHSYO3Tl6mPs9bemKjQJMKEQQSeRRq1Hu25A6SbYtnAMwaYZih5mYwDJGx8o9498GWtAW9jbi9I0aJqUhoYFdhYgm40nlO/rbrvhZ+3PmV9i4XbUCJBlenUde2G+ZzNOrSdQYJGzAjra8bfq22FfD8iyVFbTbYsCCBPcg2+mCqoWTdjLKTSSmGUgAEEkCCD8fLr9RgbxCddEOIIDC6md5G4t17/Po+y6AlQdiYI9T+v1zFPmssq5pkjlIsPUT9+BHsZ6VFU1+X0xmLa3CaXUAfFfxM4zDfJ+AwYQPGFACXWol42B+4z9MEZXxdknMCtB7Mjj66Y+uPDzxSsVANWoRZoZpuNt8ZS4zUpNqGkk3OpQRv5R2wq5plHxRPXfH3E6D5CoFqIxLUbBgTHtkJtim8G4o3O2oAEmoQZIlWQid4Hf0OK/nPEtbMKUdKYBIJ0BhsRG7GO3xxKlT93vy6H1DlMSQJjcb4WXJJlIQikegeFvEmhqpFOm+ptR0tp3Zj2jqemDuKZ5auiENP/E3uOZHA2HdgbDHi2ZqEFSCbbEdPO+LJ4CzLvXZGdmX2bNpJNyCoB9QCcbOS2mbGN1R6dwPjFEKhLACG36SwgfQ4Y5/i9NlX2VUFjPuNJnSYt6x9MUDi9T2GSarTJDqyAmxs1S4g26xt8sVij4paSeWehNIT66lqTPnGGjzSaJy4oWetZGoWOXLGWIBJPX94o/HFqAx4/wCHc/VqClWcmzi8myI4G5P8pPxx6RS8VZNjHtgp7MGH1Ij64pHlT7JT4q2h1jAMD0OIUX92rTb0cfnjOIcQp0V1OTB7Anb0w2SEUWHQMIvEviqhlV535olVAlm9FkW/mJA7TsaT4g/4h1KrGjkUM/8A1CLi/RTYDbma/kIxWcnwI1D7XMuXZuaCSZm/MTcnE+ylUR+KfG9fNSuo06BPuAk6o/iJEv8A5bKOwxUxVBYCNyAZ63+QHpix+NctpVCqwqwDAsNWrT6TB+WFHA+EvVYOF/drJLnYlRIA73gdt8YdFnzFEK9v5frqwbkkIcdOYbjuj4H4lVVWBJA93190/ngdeKDUNJC9dTmACLbfnhW0h0rQ5404CCDDa1N4neD02g/XFo8SZlvYK1PSrLUDEsBGmHmZjy6480r8TpuwppLm5ZyIkjmsN+kYb+KM3UrZbMa2P7mrTAVF5YZlhnb+K5ET2tjl5HcrKwVRoKpePyjc9CjUGnSShdLdhJbbv54Gz3jKiyo1KnUSrTqK6FiHXeGUmQSpQsu3XFCZ/wBHFgoeFMyi0q9cJTpsyQj1AKrqxA1LTG4gzc7XwcLNlRfuNeJUppTZVfmoqwUWv7rDV3BB+WKIviarma3sw2hXBkC0xbfeMWbj9DSlNhEc4HlLT94PyOEaJSpglKUzBlREn/MRO/3YSLVGn2F5mnS9migAvqkfAfnG3bHfDOLKaFKVK6Z9oTZQPU79BYdcC1dVVBUZlpUhbsTcTzfLbDelmMucpoRgS0hQN/fF43i3Xthr6A+gLMeJk2ooXMRqNhb1v26fHqd5Wh7WXrbgwFEgRAi1z/byxVq2YYEgQBtYYc+Gs6FWprIUAqZJgGQZv8Bt5Y6EznLDRpBRCqFHy+gv9e2B6ObdKtYKxBCB12N/Z36d1bC7M+JaKk6Zc+Vv9xufUfLYY54RnDVroxCgVEK94AqFSJtMBj/1YcDH/DuOuzU9en31uFg7+X5Yt9akr+8qk9CVE+uoX+PzAxV//LOmCjixtJIE/wCob+U4b0eMJrNNtSuDBF/eHp8b2PrgSp9Gimuwf9rKiadZWIjlcXsb9iY364PzVBmIqQrMsXupj4kr8ZwnyqKK7k2UlipPWT5+p6YfZOsNIv0E+u2/9vXpgP8ADL9B14pS8x5cw+gU/fjWEubzTK7L2Yj4TbGYbBGzPIdVxboPwxHVv5W/E49KXO8PIGr2clmJDUz1cm/KdhhtkMtwN6f7xcrq1PYcrQGOmykGIj54Sv0q3+HlPCl1FgN4AHxdfl9MPMzSARxqkBWHpAmIkgH5Ys/iTIcMoLSq5OEZqqB+dz+70sx5XYxdVuPxxXqz66VpJIbof4QOpPWfWMTl2Vh0VWvcj0xbfAiaM23/AOJv+5MccN8I0q6AtXq03Egj2KssiJg+1BF7XHwGGfB8i1GozMpI06RoDNfrZQTtN4xpSVULX9BHi6j/AO31WU/8ylb1qD5Xx5/Sy5M+QnHpfFlWvkXoprSpUemQ1ZGSnKuOXWRuYIHc9Bip0vDeYok6tDhlIBpOHgiNwLj4jpjcb0aa2WPwqCMnT6GKkGOusx9cVWlx6u2lqlTVaRKLNx1gYvHh2Ey6o5ZCrvMo3VpF46g7eePOuHcPzNasmVWmVrHl0NykEC8hvdjGjts0tJFgy/igLGqnSaPIg/OY+mG+U4p7VGIovTWG0nXILSogco2nFl8Lf8MKNKKmbYZip/Bf2Y8oN6nxgeWIfFtMaYAgKWgDYARYDoMPKFRsWPJcqFWQpiFO5a8ncz3xLlV5F/yj6AYh4bmDpCadlW8i9u2+FXEOOikwplgqrAY7vGq8L0IA7YZckaFfG7Y5rVqa6xUgqyLII1TBb7PXphfxPiJVXjRSUKsF4llYAgKo8mFr4r+c8WcrJQWAWJ9pUu5BEWGyi3n8MV6vXaoxZiWbufIQBPpbCubYVFIbZ3iqlpQFiAoLP3BOw7RAv2wuzDsVMk/r9fXA6g4OrUxAUSW5gwtAOoxBFiIi84RlV0ZwUfvkHeR81MYv+coTls5cBatGi4JkjVTZbWBOo3G28bYqnA0PtaCMFVHqBHKA62Uy13adN1Huabd5OL94kzmTyqKgJWVQoiSZ0swBnYyREkyYxKbVqgx6POKPD1Nw/J0ZxoJHQ6JYjvEnBuWYa+YkQBc7xq0jzt5YX8T4mWLfuyvNIkGfdiL9I6R0wpzGbc7ny+GKXZNpIuOc4lQDEljUaLdgY2E9JnYYVcT8R1HAVECAbHc/PFb1k416nAxo2QS1ZyZ3P1+uLl4Qq/uAIAb2rAyLxC/TmxR1HlOGGQqAaSARpqAzMm4HL6WJ+eNJaCi7U+CqTLnfoo/v93lvtF4n4cq5c6Vggqb7+8AfvP6GG1KtEywAv8v1+W5wBxXPU6qNRRtTsCBHkJ+kbdI64suiLWyi+zxZPDjECkf4alVfmKbj6g4jpeHW+0I9SB8I3nDJeH+yCkE2dSRsDNpjyt88MgM9KogwD3H6vsw8jil8fGnM1OlwRAjdQdul5wR/4pXp2RpAC2ZVa2kHqJOC6XDf2tfbOYf3TpB2Xa02t6/DBX87Yt3oZcDzJaipNzedu53n8bemO+LcPK0GzFMlWVhIFrGATEkdR39cL1f9kCo0sGLFSpB7T2j9Ww1y/E0q5etTVXMifdFj5x6bgYV92N5QvyWRp1ED1JLGZNrkGP4cZiCgKiqF0sI/lbv6YzDWKeWji7tHtCWKiBq6emO8zxtjTNL2WXK3uaZDddm1X3Ow7YTgSD1/XwxE8gk7326Y5qR1uWh7neJLX0quWo0GSb05l/URHTc98FUaf7kmIs5nvb4xsd4wD4Mp682gIJ37dQQfeIHzOGVFf/TMYmKTNOg9nBvr5fWD6GLh90NHaOuG8cNOnpFcobwNUfgAfTFn8D5is1dtbVHQUn99iwkxG5N4+k97eYMSXAHUgdep8/XHuvBOBtlBWRirSQwIsI9kw6/q2DyNJCLsWcZ4tUo5J6yKpIeOcSOaqRsD598Umr4urNOmjSGknVZiCeh35evXrix+ODp4a6nq6H/9wOKL4Z4XUzJqrTWdFPU0kDlm++/pgQrHZp3ej1nwnm3qZQVGVAxJnSCoA0iBDEwe5nC+l4fzg4iOIfs+r96XanTq0295CpAaRYd4w1ol3pVSt1LNE9ioIHwBx4ZlqnKsEiw2Pl5Y0LTdGn+n0svHHF3yWbX0RG/7XOKFxvPe1Z1RKwMvZkYW0kxqNgbC1uvxpvAame0NWpJmXoIOZ1LlVHUrLQ5HYSB1jcT5fjDVGEVXa9QkkkyCsKSJIFgbDadyIxSUpNAhCKei40OIrl8ugqwpvZyP4j1O+EHEOOe2KUqdGmxqFVVnUBbwoJkaoG8wO+M45w4vTo5gtvTKyQSZWrUMgzEQQI/lwr47TSlUKKrNpABLkGSwvAWLQeuJZpLY7iJeIcN9lmmpvocI5Dey91gDzaPLeME1cpTNUsKZp0SwIphyzBBGoBzfURNz3xsutMFYiLQAJHbpgWtnXgbRBgn17dT+WCpt9ITFekeboARpmLxNzvbbHMcwA7wPXYd7YIrcST2aqvMwjUYgbHpNjJPS8YEbMsDqBggyI3Bwdvsoq8LNncqlJqAaoHJZZ7XMWg9Sx3/PFn8RcKRcrSIURSesonyfWov8ceXUM20g6m3BMne8nz+OLpRptWydBjLlKtcHWeUEnUJ3mA1jGJyVUZbKxxbxNXrjSx0pflUec3O7Hbr0wmjHYSLXta/ljYpTitEmyN6ex742FPTB1SjyL6/njhKeCK2QhcMeD0dTOO2lv+4fiMQrliekesD78H8FoN7RoJEqVsJJgg4WT0GPYx4oD7RpJIJJFz1NvTEPDF016Z/mH1t+OCalF2gxJhZN42xPluEPqDG2mDfyMjDwaoSSeRYHcbAAenXuIEfE4HrjUNMhZi5EbOpmOgEffhBmPENSSC6JcghVJa1ovb6YjynERUcKS7khveMLKqxHKLdPrh8haL/luCNUAZGQiI3I2+HaMMuD5c0w6NEgz3iR3W6+uF/hStTq0dRRLkEA9JUGzQYwbxjTSQOrMhkAlSGsR6C3wxk5PTBSW0R+JcrqWmQLht4ncdxvt1x1w2iBAi8E7X3EdQdp2wFw7iLVKgX2pK7jlVTI89P34dZr2hgg6iNlZYmY+0pg4Lb6MkuzsFf0y/8AyH3YzC9uLVAYKkEWj2x/FZxmMNaPD67KRYfq2LpV4XRNKifZUSTSkmADq0obmDJub4p9XMjm0+0FzAJ27Te/bDTJewIGps0u1xojTAm/r+GI50WlG0NMn7HLVKFTSigKS5UaiZAgkEd579cQnMUVyzprOrRoJFMkA6mmSBsPdt53xzlcstWo1OnrgoQutgW07XIAHXp3w1y2Q0qQ8aQqrfbcAjstpJxz8k92G2lSE+QyuRZkAaoahurcwAZTMkGIi1ovj1ut4hy9QqRVB5YYhWMNpb7JF4Pacec+wTWvKpgcsQCOlibeW3zxsZi51ACNgoYANO+9zc9MTlzWLGddlo4yMtmqYoVHqKhMs6pDAh9QsQd46jHHhfhORyTVGp5io5qKVPtEiArSsEIJnCMZpdPMH7yGBtEQAQL9b41kczqActUCgDoNibmx/Dri0ZfzRSrdli4HxhKy5mnS1aNVQhnhBLiCgDEMSD/LAj4YoFLgC5fiiZZh7ammYpoWKkK6HTNpIi5G/TDOgj+0r06JZoZWg2bmpgzEeWCyc1K77KIMd/6jDKeJnGz2bIVNVNTAFthsIMQPLHjnG+FU0ztf2Sksz1ToEddRsoiAP1fHWQ/ab2sF+v6OClM6iwvJi29u+HfJaoWMMXdiriPiFMqtLL1qFTUqarFd3ZiCFJ9evfFa4txmhV1Mq1BUcANqixEXEHe2L5xCmkA1aSOdG7IpMCbbGw/XfADUqAKEZahDA3FJQRY7GLH8sTVDtMoGd4qzknSBMT/pEDARYtucXY5CiEUNRpswEM5mSRIktMk7TODctwjJMlMtTCySG0lz9sDoT0OGzQuLPPqdLtfBqUDMG2/XzjoMXTM8AymqpTy454/dnVUjUQAJk4rNRMyraHpaTJHXeb/av0xswrQp/ZakuQpIQFjGwAgk/KcescAyqrlK6FhIqsySdzpG3fbbCHgPBiQ65imya+QFT7yVJVoJm4nFrPAP2bL1NJYrOq4BhlUjYAdCT64TkeSNFUeWNkdD88AFib+Z7b/TG6+XUaWvDWt36/qMWjM+G/b5haesKGV7qk8y3jTqEyCTv9k4jHg2oyBP2kKAWiaOx0hrn2nYn5YZSf2LXhXqxAUAJYH7Rn7oA3+mGlRaNOnzVEBg2WB0B2X43OB63heoxOrNzvMo3frDeYwvHhVpj21M/BgdpNtJG3njZJ+mqvAWtnUBMScTcP4mWfQqe9qi97Kdvlhkng4lHIYMSP3dz7wNy3LtFv1aDhXhrMJVRz7OEIJAYzBtYR2OFU4NPYmRcuFuTSXVC6YAEz7vXaAfuGOjmAbBrSLgmLztHXa8RgIFlTTo1MNuaB/Q2+/AmY4n7OzqA0Tt1HQHYnf5Ymp+InOWyscYp6cxVUD7ZP8A1c34464WzLWpPBIV1m3SYP0nFuyOVWtTWqwMsBeRNrRMWvgqnw6mN4t3k/X8YjHWp0rYP+jH/h9XKUdBYDa5Ig6eX7gMPePnXlngg7EaWnZh0Jnv0xS0yyU0ZV/ikk7XMj0EHbE/Dqv/AKimCPtAGfpYGPv9cCHNnL+RMvCbgjlaySCLx88XakNLC8XE+8vXt7rYgGUVvsKfNQB9D+eKlwqvWZihquIsYY/nfF3sZaLHx7hTHMOVJAJBt5qJ+uMwUoBAN7//AHmxmF2bE8UzPD1ptpYh2kkxt0+P9zgjl5Vdu9vPURsOgAHywv4lmSK7hbhbz36i0W3HywNSkkEmNULP+f3j8A31xyU2tnS2W3wg/tMw5URyQoPYMnb4/PFxyyIFqBy4AuYZUCxb3jfY7bYpPDGp0jFNSrQ6mJ2DC8sTJ9B+WG1OpUhp1MWsJ6ACTYwPKduuIckgOWjjLhWBf2R0q+lXBkBoJEiOwJxCyqXmSL9C077AA9Y/tjulUa6Ly6mB0yIJ6G8A8pHbfB3/AJfckMampyRCqADc/wARMbmL+lsSpt6EX3XRBRPUiFJBs0qAbAcxsd7zfpOBTSJdlE6FsIgRI2v1HWfxGGGbpmkFJ9qwIaYABUqRYgru2qZBuAbwDjij7Nm0qGDGC0xHKCBB26+c4NSjs6FyQVAFPKj2rEsQSoknTEERBGm8RvE4b0c1VpgEVWIEb+zNibXZZjpv88S5Dhn7QdOoLFjy6jYEgzqGm3cGY8jg9OCUyAGqFPaIrcoFgpUBRMjmJnboD0nBjKUkZcsfoVjjNcA6akA2kIhBFhBlNwP0enOczLgBtZuwEFUi9zcARtG8efYjjGXpU5paapApg6gUuAxEbC5JHl9+Ba7GoqFQwDOBLQNgDYBuxHz6YLcx84MnzWcrOoJiwK/4ZvI3kNBkfht1WZrMVOXnQQDp5PLvq7D9Xxa//KRJk1J3mEUA+sgn64B8S8FoZPLvWYO8Mg5Sika2ixCelsFfJYJSj4ims9RhJa03GgbnykX/AF1wfkqtX2axohST7hn3gd9UdBiFSlWkalJKihGprNQJ9s2gqRMR1GLXlPCLqB++DEEx+7jr/nODLPwSLViA0z7WdagkQQVtuLGG227Yd8EyK5llSrSR+dwG1FWGnTEEdNKkCT185xH4k4YlCmGdmJ1IoFgJkxBIPaPj5zgnwlVaaLAOimqxYMFuBGraQRBi17WwVlVsdyj4E8RzTU2emtNZDAkuzSJIcR0ETEQLReZxJxTxSzo1I05DiJ1SOZj1C3idrWntjvxBwl6uZZ1cKrCiTKkk8h6AgC6/UYV5/g1RSNTqQzU/sxZiRsDH66YDcvDNxoEyPiBKddKnsi4DNHNHQiYKyN/wwWviaj7T/BqRIBA0kRDL1Ig3F77YU08lTqu1Gm1XXSZAxemug6qipIcVJF3Bso62GGWW8OMHCowlWgnT1sTF9hI+gwHKaJWcZph7QAXlpMj3dXVunpBO/fAPsU9tq5gIPLFtiN+n9cT8So+xKKdTM5AUCBJkSABe8gTjKHCax/kDQZMwJuB9focTeSFbp0gatm9KBZNz6zc/0x0tSYIMSADEfW1xOIuKu1MDUpC8sWYBrwCJHx/O+BKNR5K6YM7G15gj+txhMWc8nT0HZqmxYMDIEi24HUWvGE2ay5qEB20ASLneen9cNsuHAZQ0Hp5A+hO2Bk4YqtdzqMlrCDJmRFxPx+uH4549i36HcIQeyVEllEmZneTc2gT+hjrNuF5PeInpN4M2g/PfAVelo2cgEkhTYXAgzEnv0xFUBA1EqZ1FRJmxAMT2/He2KPkclQG9BWVoio55+kqsQb9za/lgrLZGorqdBswO46H1wFk610I3gRf+E8p+BAMfHFv4PxVmsxLAxcuwIJgQRF7mPWJ3x0cHIo6ZlQ1XMUzc1KZPmQDit5VNGYdoGiTBBsead8R5jh/7+osfaP1v+OLZw6jppKskabfY2+OOxjrbIMvmQFA1C1t06epxmJq1BCSWBJ7wPwtjMLYx4pxTLMxJVD+8Ukm5jQf6z52w3y/h4toYFIUCFNekDIjdTcX79vLA2XqI3vKrKdlMxpkKdhNuUfDpiQ8KSqpekGQmQAXMHmknYnoLz1OOLKls6GlYwyGRK1nHLypI0srCHK31Ax54b5LJE03bUJVSSCQonzY+6PPeBY4A4LkDTVizglgoMGdlBN/X6R8D66EoVJa8GxBAgg9x6/LEOTkTkLaAvDNAszMRTmOUPABLN0HebDBPFMu4fSvs2Cggo5ZmUgknQyf4fTlJiwsNyuqVdLsC1QUnp87ADUaZIiNVpJv02PY41Xb94ERWAYK1toIm4NtW3Xp8MFP0ndIY1KlOrTgaxpWIIIDXJDSTAAuJ3GN0qDIvOBB3No6lbb7SBHmcRo7LTWYKQNJF51WIv1iJBG/kcars0sRYT0IvuPiZ6euJydgbGfCGCspsCQJN+qnSR8ZHa56wMao5mEQlZII1LJ90EDRJEABlHroHbAiZjS1MKC3M4OwCqIsO8wPkLd+aFVQpcnkQaYN5JGo6jO0TMb6otjKVIKD89UVi7k30xIMcse9/Nfr64l9nopUNgQ2u3QMPW5sAZ3i1sL8ixeqqoTrYDUbbDoNhsbr1AHfDOtTAVSJChgoHkBpva9+vWThovWxuP/IulIhV8pj16/j9cVz/AIjUP/bnmDL0iQB19ot53OHOWfU4m8AT21RP3freAvHg1ZVgL89ER0BasoHxkjHTEoymZ3Iinw1tIgtUpufWQtvIGfhi/ZZTpnz+hvhL4lohMiUB29l9HUfr1w84ax0idjEDrEA+n9xgf7GEP/EWgGyh2s9Mwf8AP18txgOlm2ytDLgKuvcBhImJYEg2F4Pbe8Yf+JMsK1AJvqdAZHTWJkHYaZwi8T0tPsDMw5k9IK3+6b40lo3tjThfEtZJm5RRB3BUkdpsCCR5ntibjtKFHW9M/wDTVAt88LaCqruWJ5abMSvQjeBuZAjziMMs6Q1NgI5UW0G0OpEWvMC/W/aMIno1iXIZYU0zlfYk09Mj+DTUuPUifTDihU9mhqKAecqNcXPtDJ9S0eoUHAmfrxRAWCpUs8AGQwYEjzifK4xCuUOinNcHl5hsNLE6rRc7xPmT2wW7Yotr55mzFNylqbGopHYwqnzk6SP7YHzxpkiorGTEqSZmLFZPLaNvljqrlmpuX5gpVIIY3uQDpuBywImwO/cigWNKqzVFprJHP11A8oUDUfe6tFxvhZK9CSRXvEPEHdlV0IbSu5J1ETfURAE307dumFfCmJaCSSA7EgX2v1sBF46Dyw94jxCn+x6XgnUAQNRsCTCiOUEBjubsfLCihSKanEXBHv8Au/wkndwZNh1HYnGpNE5RD8nll97aT1MXkmLGPjgKtnArFZMzvBF/IT8L2xNSqgCOQmAx8ogd7dhbthVxLK6X1s5IJlZm47n0M/EYnGO9k6GLZ/WDErBiDFyBY+tjhD/4pV9pJ32JNzH9h9+H9DLkkSqoLq5K/AER02AGNZWvRpllT3mYAlrQbhgEE9habec4eLSvQEB0K5LzoVdZYwB+iQOhx6BwXNUxAqOAFVYn+YS25JXmvB7A2xVMxUSNonaI8+3T8vXEmXKwY9D+At+rYMeWndAUqZ6dk89SKWUvc8ypq/3RgQZ+mmrXy9RqVhb0AOFXg8/umWJIbqehAjbB3GbBbATqFvS3447401Ze9WcnjOWN9af9NX/4YzCIUYtC/I9cZg0gZFSTJE1lDToiF2gsHkgEdyOveMGZd41IFVQJ0C9vdIPfr92MzlLVOoBRuCCLMGT5A3t8bbYNpZU6wwamx0lCQZl2UyZvAg6vl0x5LdrZZ9ndKmNh1AmwHkZiOnXGsxmIcFTNrqRMwDt2Ow+EWxgaJbrb/VeB+foMD159sF1AiNQt1m/MR37DEYuxWSpDarTr06rczEA8sHl7WHLM43UzqBrzqChTBF2K2JUjaDMi3XE4UC8dtzeOsfrrgPWCIIDLMwQSRGwBN9sOpmXRGaoUKsctgB1YkbAdR3Pl8DOGJbVpJiDHYIs7x1JEep88DVqaFlB/xJHKLfa3PYSR67+ptFhB1bA6YvcsRIPcWj/VjNi1shyNci5HaCbi/wDf7sT11mFkgCGaOpJgiesEg3xxlKInyBHXsdv+n0GNZtjNwSpIJNujTBJiCY36FttyFXehn0dZfNQ2pLMgAnVPmzFepk7zPp0aPWYppJIMjSoIn+YkDYQfv2wu4ZlwsreDtIuLSCRuCO3edxvPw5GFRmk2M3JXSdIBAJ/ITOHytmg9kOT8VZoBuWkug1CWYMY0CGJGveSLD4b4B434uzT1aFNGUK4So4KA8xOtCZ2gaPQjywwrAaQoCr7VnJ5YALJoA09yW1RaPgMIuL5XQ6kI91UkxawVZnyBkT11HscdEJ2zN0xlV4pmHB1sXQEfu5jUFKkqP9UqT0thbmfF2eNYpTrkIJIUU6R004JA1ezkwulZO5weaBhwBcgx2vGq8yJPwwFR4cBXNQgiIUi0QY6zBU2ExseuNGdWZSYubj+ddwlaq7gsRcAC0afdA3Pyjyw88P0zU9qyuWMhlDbiQkKehsxv1n1wBV4ZUDQpCu2kKQTe51dIuOvS3c4a5Kk4VjsamkysRaQbbCdvh8cNyTWJlIbeIUNZHNMn2hFtJjVD6rfxLAAv0gnyCSmTQp6i4b2VVCSWD6gCqA/ZPLouejE2JsVmcsVTVq925WBZftGN9z59PLA6MQYYA601TPukcrd7lYMWuD0jEsn4abI6dGlRplFYliEYkkXiVIm3Lct85xXmyq6Y5joU6RHuhhB9SbnyjrfDtmOnQRYEgt3uQR38wb2BvjdNtSxTVoUgFjaY1QfQC3wHngKTE2Vk5X2Q0UyNYZGYmxLXgDrCwOm5bscM87nlLahzvAWYF4FpIA2Aj0HribMcHXXDkKT73vR/ETHpIkdT8cSVEo03cSCKnKjvJ03j3NNgLefWTaaN2N2hXTc1QysrLYbDqp6WtYkeeIPYkczLIMi+0yL9iwiI/LGAASNRDKSLmAIYQY7knTEHqek4mObYMwBLIG1Eja0GdPWATYbasBp+CWNeE1GJcgALYMSR37k73Hnv3w0zZpKCakxYiCSNSkleSCovO/UdDfCI591AUSCZttBNz52xCOKgCHHmIlu1piJ+c4jg5OxLCuNZQtQNUMCKhB0KSI5W07Hmtt6Edb1VKJDDWSRIm5/Q674sFPM8sSQSPdEDSNwI69MD8GyVbO5r9npCYJLnoqAAMxMGADHKBJJgeXRxZdAVvSIwCrhFLCT3OxPb9D53ZZJXedMdjBFjHp0IMjFv4p4Yo5ZaaAe1YqpZqi9tgENgNzeT54a8BoZComl6VGjUUiSpKFuxEN717i/pe11wurZOMk54eiLw/XOVDnMnSGKxAa3eYG3XDF+K0M0VpUWlp1WUiwBBufXAHi6hRpqTRre1WZ0hSCs8pMxpbpaBb4YU+ENJzdN3cUxENEkyw2UAT8dh8QMVg/C67otbcNqdvqv54zFtVaAEAUo/mRifiSbnGYeimKPJHy0WiQbxJJnZpAMb/djvILTFgtiDNzBMb9zInziMdVAAYYiV3MgmGv032vHfGkay+Y2A6Rtv6Y8LJjWQ1K8AFdrDaYEXJEWGOQJfXaATIsPMfGJn09cRIhOlejN1meVTee0AyI7dsSUVX2pJUmWIB3AncG1jYbfdgxegdhdRSKQACsdAjmuzGLz2857euIstSJFOEJiFkEwT1Ivfp/Q4HzLmS3uqbW8gALRbY/IHywdlmhVaSxE+tvh/a+BegdnK5eBUdiZJP6B0zscd1NJgggBbkAdCAPnF8SMt5kyCQNje09N4EW7nyxzRoxqMEKxFtz70LbsQB9cZyCkby6iNLdCS0SYWe8b7Dzk/CKlQLAarhWaJ6hjzWmSOQWvNxgqkuhJYi5bUx/hn7zBAx1RliQTbUzHmEd77Xk/CPLAU6NVgiVlJJM9tOxt1t/N09RGGmVZaSgsAGJIa1iWUkGe99M26+ULwoaIZtMMSANzfp9JJ88TUalhqOotB9DEk9esD4YKe9Ct0x1VdWTQ0yLgbEdye0qPUyMIOKU2qabQhgwOliBPkOU/6Rjt3MEX1NElvUCDfpjqsSwUzdxb0M7nqf64bNo2TZlZRraOaSAABcagCAZt0EfHGqeXAAI0kEGe3NLW7RpwNmg4dmAgDaPQLb4GPLfEj1gF0rOqBIOwIBAj0k/IY2TQLogrpHswCCswN5BiBBnfv0sT1nBzAGG7LvBtJsI6iPu74Cymb90CSZWbb3nvAxPUYFCFBtBI8/XqLzPljOTZkxjnGKgdbEEXvIAMz5Dr2HnhbUp6CvKSHXSLREnmnqLAkA+Y6Y1+0kLLQQsbTIm+3z/VsFUagKQJMj5dflb/dhsgt2wHP0TpWAZZiD66dJuTbob9TETgTI03UhAxm7AAxqMEnrY9fszcbwMO6qEgDTqJiRFryG/Ayf4vLENdBTItOoSDB2nVAIIwvyeGZxSQSpKgGSNV5+Im3QR6YWcQqKCANIE9Fnrbc3k+X2vmbmq6syxuIOwHr+P8A1CO+F/D0l2LQE6m9p6+okDyk4pBsTYMKitU1EAn2kg6FvuO0QDPlIvjioGUe9CrawG956WNiAI+eCM6yryhisF7Drq6fP78AZZCtRRMa4XblB07D6RPcH0pHZiDP6AFYAczDrNu9++8wOuNlqZUrpkj3jJIC9D6bem+GuTzIYIoWxgMPdI3kdj0vuD3xJTqQpRBzLN4jlVrQRuASbTME22nWAQNkTAdRzJ1vcAXER+du8YccE4zmckGNAqntoLv7OathCoA06UEkzE3PljrKZ+CVPNHTTvIkfW+/bvaHN5xAjgQQFaxvB5bSTIjUfjG18UjOV0FNkfEuPVa1UtmMw9UmAktpUCOqKAN+464YeHs+ppaiNMgDYWI3v0PWRH1wj4M2UOUrwlRs17PSJMqCzAB1AAjTb3ifrGCeFCMuHM6iagKyQZX7jfpHXFeRasu4LG/S1AZZxoq1UphgOZ6q07Ezys06o7QfkJwTS4HTRtWXqrWoiCripTbmW5BK2J36CZGPPuLZkEo7QVHKZ3k8234+uLb4GziaatKLGHU3JIsHBEWAAW89cWhF/HkKnFRqtjat44oKxHsqlrbqPpqtjMJ6/DKRdtTlW1NIK7XPc4zC/KJZEznfcuE/AW7RiQ5izMbxB/3Afh9MZjMeMg2DZFg1KZugYCemsRM9BLbDEuWT2jBUgFCzQduWCT5iInqdsZjMMN6Q/tochZA1GNiDze95fraBfrUx0QffLG97AQfKPLyxmMw1JaNWhvQqqoLaoi4QLOzC8zYAdPIYGavdNwDcXkWE/ed/TGYzEI9jeGqjQkmSAmx2/lEDuI6bH1x3TkU9+kDUJgkG/wB5+AHXGYzDgRE7kEowiwB6gg9d+sde2Jcm3OzbEae5swJ36xvtjMZjInLskqyOaxvt8Jv5b/LGZ2oStJ4AGoAHqTMkb2t8MZjMMBG8wodQWIgMYEQZ1C2qD0B36jEeZy4mVADaQxIJnSWCxfaBPy88ZjMMuhn0LsnUl1VbSZnqYgfD7VsMMyAxEyWkQQY6ELfpF/ljMZgPQhGUUJpudWkn4zInyvgmjyDzg7eRI+8k/DGYzCtgJvaA09QJ5QR8CLdP5T874FEjlFtNyLdGswMXJ2joMZjMYY0UECBYkaQOltJAPe2/bAWaoldK3kgkkGwErNpHXTt52vjeMw0W0wIBqrrgiwWN5PKDMRY9uvfvgZQ8FyZRixVuxUxPQ2J2+PpmMxaLB6azCGm4W/PzLG02bYbFRa0dcapF+dJgrzC5Nt97bjoe3Tc5jMW7CarVWYGSNSncgHlAJi4vF/l12wv4hqkpKyyibXge8J8ys/6cZjMW40hkhdw8uhLgkSCNQN4O/r0xZ8tS/wDR1HdpJqI0gQYBCgGN99+xHbGsZjtmlgFPdCfPkVkLDZQQs78hkk/DHfhvNFGSCZBKGLSrnSfhdT8MZjMTh/ixpou9TMlyWCKZ74zGYzHl5Mkf/9k=',
                      title: 'Lonjakan Harga Bahan Bangunan - PT. Bangunan NIF',
                    ),
                    NewsCard(
                      imageUrl:
                          'https://i.ytimg.com/vi/-Y9shKNLhY4/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBBZ2WRMQIb_sqC82ZV5796RBktKA',
                      title: 'Dancing House',
                    ),
                    SizedBox(width: 16),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const MenuButton({required this.icon, required this.label, Key? key})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        padding: const EdgeInsets.all(12),
        shape: const CircleBorder(),
        elevation: 4,
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 30),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  const NewsCard({required this.imageUrl, required this.title, Key? key})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(right: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: SizedBox(
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: Image.network(
                imageUrl,
                height: 120,
                width: 180,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(title, maxLines: 2, overflow: TextOverflow.ellipsis),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'Detail.....',
                style: TextStyle(color: Colors.redAccent),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
