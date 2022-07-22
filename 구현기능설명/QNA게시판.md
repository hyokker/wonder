# QNA게시판 목록보기, 작성, 수정, 삭제, 답변 기능 구현

- QNA게시판 목록보기
- select 메서드를 사용하여, 작성된 모든 QNA글을 불러 온다.

```html
<select id="selectAll" parameterType="searchVo" resultType="qnaVo">
		select *
		from
		(
		    select rownum as RNUM, A.*
		    from
		    (
		        select B.*, (sysdate-qna_regdate)*24 as dateTerm
		        from qna B
		        <include refid="searchWhere"></include>
		        order by group_no desc, sort_no
		    )A
		)
		where RNUM>#{firstRecordIndex} 
		<![CDATA[
		and RNUM<=#{firstRecordIndex} + #{recordCountPerPage} ]]>
	</select>
```



- ConstUtil의 게시판 페이지당 보여줄 상수 를 정한다.
```java
public interface ConstUtil {
	//게시판 페이징 관련 상수
	public static final int RECORD_COUNT=5;
	int BLOCKSIZE5=5;
	
	//자유게시판 페이징 관련 상수
	public static final int BOARD_RECORD=10;
	int BLOCKSIZE=5;
  }
```
- PaginationInfo 클래스를 작성하여 게시판 페이징 처리 할수 있도록 구현
```java
public class PaginationInfo {
	/**
	 * Required Fields
	  	currentPage : 현재 페이지
		recordCountPerPage : 페이지당 보여질 레코드수
		blockSize : 블럭당 보여질 페이지 수
		totalRecord : totalRecord 총 레코드 수
	 * */
	private int currentPage; //현재 페이지
	private int recordCountPerPage;  //pageSize 페이지당 보여질 레코드수
	private int blockSize; //블럭당 보여질 페이지 수
	private int totalRecord; //총 레코드 수
	
	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}
	
	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}
	
	public int getBlockSize() {
		return blockSize;
	}
	
	public void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}
	
	public int getCurrentPage() {
		return currentPage;
	}
	
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	
	public int getTotalRecord() {
		return totalRecord;
	}
	
	/**
	 * Not Required Fields
	 * 
	 */	
	private int totalPage;  //총 페이지수
	private int firstPage;  //블럭당 시작 페이지, 1, 11, 21, 31, ...
	private int lastPage; //블럭당 마지막 페이지 10, 20, 30, 40, ...
	private int firstRecordIndex; //curPos, 페이지당 시작 인덱스 0, 5, 10, 15 ...
	private int lastRecordIndex;  //페이지당 마지막 인덱스	5,10,15,20....
	  
	public int getTotalPage() {
		totalPage=(int)Math.ceil((float)totalRecord/recordCountPerPage);
		//totalPage = ((getTotalRecord()-1)/getRecordCountPerPage()) + 1;
		
		return totalPage;
	}
		
	
	public int getFirstPage() {
		firstPage= currentPage-((currentPage-1)%blockSize);
		//firstPage = ((getCurrentPage()-1)/getBlockSize())*getBlockSize() + 1;
		return firstPage;
	}
	
	public int getLastPage() {		
		lastPage = firstPage+(blockSize-1);
		//lastPage = getFirstPage() + getBlockSize() - 1;		
		if(lastPage > getTotalPage()){
			lastPage = getTotalPage();
		}
		return lastPage;
	}

	public int getFirstRecordIndex() {
		//curPos=(currentPage-1)*pageSize;
		firstRecordIndex = (getCurrentPage() - 1) * getRecordCountPerPage();
		return firstRecordIndex;
	}

	public int getLastRecordIndex() {
		lastRecordIndex = getCurrentPage() * getRecordCountPerPage();
		return lastRecordIndex;
	}

	@Override
	public String toString() {
		return "PaginationInfo [currentPage=" + currentPage + ", recordCountPerPage=" + recordCountPerPage
				+ ", blockSize=" + blockSize + ", totalRecord=" + totalRecord + ", totalPage=" + totalPage
				+ ", firstPage=" + firstPage + ", lastPage=" + lastPage + ", firstRecordIndex=" + firstRecordIndex
				+ ", lastRecordIndex=" + lastRecordIndex + "]";
	}	
}

```




- Controller 
```java
@RequestMapping("/qna/qnaList")
	public void qnaList(@ModelAttribute SearchVO searchVo, Model model) {
		logger.info("QNA 게시판 목록 보기 파라미터 searchVo={}",searchVo);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(QnaConstUtil.BLOCKSIZE);
		pagingInfo.setRecordCountPerPage(QnaConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		 
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		searchVo.setRecordCountPerPage(QnaConstUtil.RECORD_COUNT);
		
		List<QnaVO> list = qnaService.selectAll(searchVo);
		logger.info("조회 결과, list.size={}", list.size());
		
		int totalRecord =qnaService.getTotalRecord(searchVo);
		logger.info("조회 건수 cnt={}",totalRecord);
		
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
	}
```
