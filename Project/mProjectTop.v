
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

//`define ENABLE_DDR3

module mProjectTop(

	//////////// CLOCK //////////
	input 		          		ADC_CLK_10,
	input 		          		MAX10_CLK1_50,
	input 		          		MAX10_CLK2_50,
	input 		          		MAX10_CLK3_50,

	//////////// KEY //////////
	input 		          		FPGA_RESET_n,
	input 		     [4:0]		KEY,

	//////////// SW //////////
	input 		     [9:0]		SW,

	//////////// LEDR //////////
	output		     [9:0]		LEDR,

	//////////// HEX //////////
	output		     [6:0]		HEX0,
	output		     [6:0]		HEX1,

	//////////// Audio //////////
	inout 		          		AUDIO_BCLK,
	output		          		AUDIO_DIN_MFP1,
	input 		          		AUDIO_DOUT_MFP2,
	inout 		          		AUDIO_GPIO_MFP5,
	output		          		AUDIO_MCLK,
	input 		          		AUDIO_MISO_MFP4,
	inout 		          		AUDIO_RESET_n,
	output		          		AUDIO_SCL_SS_n,
	output		          		AUDIO_SCLK_MFP3,
	inout 		          		AUDIO_SDA_MOSI,
	output		          		AUDIO_SPI_SELECT,
	inout 		          		AUDIO_WCLK,

	//////////// DAC //////////
	inout 		          		DAC_DATA,
	output		          		DAC_SCLK,
	output		          		DAC_SYNC_n,

`ifdef ENABLE_DDR3
	//////////// DDR3 SDRAM //////////
	output		    [14:0]		DDR3_A,
	output		     [2:0]		DDR3_BA,
	output		          		DDR3_CAS_n,
	inout 		          		DDR3_CK_n,
	inout 		          		DDR3_CK_p,
	output		          		DDR3_CKE,
	output		          		DDR3_CS_n,
	output		     [2:0]		DDR3_DM,
	inout 		    [23:0]		DDR3_DQ,
	inout 		     [2:0]		DDR3_DQS_n,
	inout 		     [2:0]		DDR3_DQS_p,
	output		          		DDR3_ODT,
	output		          		DDR3_RAS_n,
	output		          		DDR3_RESET_n,
	output		          		DDR3_WE_n,
`endif /*ENABLE_DDR3*/

	//////////// QSPI Flash //////////
	inout 		     [3:0]		FLASH_DATA,
	output		          		FLASH_DCLK,
	output		          		FLASH_NCSO,
	output		          		FLASH_RESET_n,

	//////////// G-Sensor //////////
	output		          		GSENSOR_CS_n,
	input 		     [2:1]		GSENSOR_INT,
	inout 		          		GSENSOR_SCLK,
	inout 		          		GSENSOR_SDI,
	inout 		          		GSENSOR_SDO,

	//////////// HDMI-RX //////////
	input 		          		HDMI_AP,
	inout 		          		HDMI_I2C_SCL,
	inout 		          		HDMI_I2C_SDA,
	inout 		          		HDMI_LRCLK,
	inout 		          		HDMI_MCLK,
	input 		          		HDMI_RX_CLK,
	input 		    [23:0]		HDMI_RX_D,
	input 		          		HDMI_RX_DE,
	inout 		          		HDMI_RX_HS,
	input 		          		HDMI_RX_INT1,
	inout 		          		HDMI_RX_RESET_n,
	input 		          		HDMI_RX_VS,
	inout 		          		HDMI_SCLK,

	//////////// Light Sensor //////////
	inout 		          		LSENSOR_INT,
	output		          		LSENSOR_SCL,
	inout 		          		LSENSOR_SDA,

	//////////// MIPI CS2 Camera //////////
	output		          		CAMERA_I2C_SCL,
	inout 		          		CAMERA_I2C_SDA,
	inout 		          		CAMERA_PWDN_n,
	output		          		MIPI_CS_n,
	output		          		MIPI_I2C_SCL,
	inout 		          		MIPI_I2C_SDA,
	input 		          		MIPI_PIXEL_CLK,
	input 		    [23:0]		MIPI_PIXEL_D,
	input 		          		MIPI_PIXEL_HS,
	input 		          		MIPI_PIXEL_VS,
	output		          		MIPI_REFCLK,
	output		          		MIPI_RESET_n,

	//////////// MTL2 //////////
	output		     [7:0]		MTL2_B,
	output		          		MTL2_BL_ON_n,
	output		          		MTL2_DCLK,
	output		     [7:0]		MTL2_G,
	output		          		MTL2_HSD,
	output		          		MTL2_I2C_SCL,
	inout 		          		MTL2_I2C_SDA,
	input 		          		MTL2_INT,
	output		     [7:0]		MTL2_R,
	output		          		MTL2_VSD,

	//////////// Ethernet //////////
	output		          		NET_GTX_CLK,
	input 		          		NET_INT_n,
	input 		          		NET_LINK100,
	output		          		NET_MDC,
	inout 		          		NET_MDIO,
	output		          		NET_RST_N,
	input 		          		NET_RX_CLK,
	input 		          		NET_RX_COL,
	input 		          		NET_RX_CRS,
	input 		     [3:0]		NET_RX_D,
	input 		          		NET_RX_DV,
	input 		          		NET_RX_ER,
	input 		          		NET_TX_CLK,
	output		     [3:0]		NET_TX_D,
	output		          		NET_TX_EN,
	output		          		NET_TX_ER,

	//////////// Power Monitor //////////
	output		          		PM_I2C_SCL,
	inout 		          		PM_I2C_SDA,

	//////////// PS2 //////////
	inout 		          		PS2_CLK,
	inout 		          		PS2_CLK2,
	inout 		          		PS2_DAT,
	inout 		          		PS2_DAT2,

	//////////// Humidity and Temperature Sensor //////////
	input 		          		RH_TEMP_DRDY_n,
	output		          		RH_TEMP_I2C_SCL,
	inout 		          		RH_TEMP_I2C_SDA,

	//////////// MicroSD Card //////////
	output		          		SD_CLK,
	inout 		          		SD_CMD,
	inout 		     [3:0]		SD_DATA,

	//////////// Uart to USB //////////
	output		          		UART_RESET_n,
	input 		          		UART_RX,
	output		          		UART_TX,

	//////////// TMD 2x6 GPIO Header, TMD connect to TMD Default //////////
	inout 		     [7:0]		GPIO
);

assign UART_RESET_n = 1'b1;



//***********************************************************************//
//Image prcessing
//SW[0] --> '1'(on) --> load is disabled (No image processing) --> LEDR[0] is off
//SW[0] --> '0' 	--> load is enabled (image processing) --> LEDR[0] is on
//***********************************************************************//

//reg [7:0] ImageInRam  [0:16383];

reg [7:0] ImageOutRam [0:65535];

localparam pImageWidth 	= 256;
localparam pImageHight 	= 256;
localparam pWindowHight	= 3;
localparam pWindowWidth = 3;
localparam pWindowSize  = pWindowHight*pWindowWidth;
localparam pImageSize  	= (pImageWidth)*(pImageHight);

wire		wPixelValid;
wire [7:0]	wv8ValidPixel, wv8ImageReadData;

reg  		rOneRndProcessDone;
reg  		rDataValid;
reg  		rRst;
reg  		rClk;
reg [3:0] 	rv4ReadCnt;
reg [1:0] 	rv2ImageState;
reg [7:0] 	rv8RowCnt, rv8ColmCnt ;
reg [7:0] 	rv8Pixel, rv8ValidPixel ;
reg [15:0] 	rv16OutRamWrAddr, rv16InRamAddr  ;
reg [7:0] rv9x8WindowArray [(pWindowSize-1):0] ; // 3x3 window used for Decision tree based denoising  ; 3X3 array is converted in to [0:8] flat array for simplicity

//State declarations
localparam State1 	= 2'd0;
localparam State2 	= 2'd1;
localparam State3	= 2'd2;
localparam State4 	= 2'd3;

// initial
// $readmemh("lena128_Salthex_Pepper.txt", ImageInRam);

mDTBDMTop  uTopModule
	(	.iClk(clk_33Mhz),
		.iRst(SW[0]),
		.iDataValid(rDataValid),
		.iv8Pixel_a(rv9x8WindowArray[0]),
		.iv8Pixel_b(rv9x8WindowArray[1]),
		.iv8Pixel_c(rv9x8WindowArray[2]),
		.iv8Pixel_d(rv9x8WindowArray[3]),
		.iv8Pixel_fij(rv9x8WindowArray[4]),
		.iv8Pixel_e(rv9x8WindowArray[5]),
		.iv8Pixel_f(rv9x8WindowArray[6]),
		.iv8Pixel_g(rv9x8WindowArray[7]),
		.iv8Pixel_h(rv9x8WindowArray[8]),
		.ov8PixelOut(wv8ValidPixel),
		.oValid(wPixelValid)
	);

ImageInRam  uImageInRam(
	.address(rv16InRamAddr),
	.clock(clk_33Mhz),
	.q(wv8ImageReadData)
	);
	

//********************************************************************//
//Image processing image read/write logic
//*******************************************************************//
assign LEDR[0] = rOneRndProcessDone;
//assign HEX0[0] = |ImageOutRam[rv16OutRamWrAddr];

	always @ (posedge (clk_33Mhz) or posedge(SW[0]))
	begin
		if(SW[0])
		begin
			rv16InRamAddr		<= (rv8RowCnt*pImageWidth) + rv8ColmCnt;
			rv8RowCnt			<= 7'd0;
			rv8ColmCnt			<= 7'd0;
			rv16OutRamWrAddr	<= 16'd0;
			rv4ReadCnt			<= 4'd0;
			rDataValid			<= 1'd0;
			rOneRndProcessDone	<= 1'd0;
			rv2ImageState		<= State1;
		end
		else 
		begin
			case (rv2ImageState)
				State1:
					begin
						rDataValid				<= 1'b0;
						rv4ReadCnt				<= rv4ReadCnt + 1'b1;
						
						case (rv4ReadCnt)
							4'd0:
								begin
									rv9x8WindowArray[4]		<= wv8ImageReadData; //Pixel to be processed
									rv16InRamAddr			<= ((rv8RowCnt-1)*pImageWidth)+ (rv8ColmCnt-1);
								end
							//Top Half	
							4'd1:
								begin
									rv16InRamAddr				<= ((rv8RowCnt-1)*pImageWidth)+ (rv8ColmCnt);
									
									if ((rv8RowCnt >= 1) && (rv8ColmCnt >= 1)) // Check for the image boundary (i-1, j-1)
									begin
										rv9x8WindowArray[0]		<= wv8ImageReadData;
										
									end
									else
										rv9x8WindowArray[0]		<= 8'd0;
								end
								
							4'd2:
								begin
									rv16InRamAddr				<= ((rv8RowCnt-1)*pImageWidth)+ (rv8ColmCnt+1);
									
									if(rv8RowCnt >= 1) // (i-1, j)
										rv9x8WindowArray[1]		<= wv8ImageReadData; 
									else
										rv9x8WindowArray[1]		<= 8'd0;
								end
								
							4'd3:
								begin
									rv16InRamAddr				<= ((rv8RowCnt)*pImageWidth)+ (rv8ColmCnt-1);
								
									if((rv8RowCnt >= 1) && ((rv8ColmCnt+1) < pImageWidth)) // (i-1, j+1)
										rv9x8WindowArray[2]		<= wv8ImageReadData;
									else
										rv9x8WindowArray[2]		<= 8'd0;
								end
					
							4'd4:
								begin
									rv16InRamAddr				<= ((rv8RowCnt)*pImageWidth)+ (rv8ColmCnt+1);
								
									if(rv8ColmCnt >= 1) // (i, j-1)
										rv9x8WindowArray[3]		<= wv8ImageReadData;
									else
										rv9x8WindowArray[3]		<= 8'd0;
								end
							//Bottom Half		
							4'd5:
								begin
									rv16InRamAddr				<= ((rv8RowCnt+1)*pImageWidth)+ (rv8ColmCnt-1);
								
									if((rv8ColmCnt+1) < pImageWidth) // (i, j+1)
										rv9x8WindowArray[5]		<= wv8ImageReadData;
									else
										rv9x8WindowArray[5]		<= 8'd0;
								end			
									
							4'd6:
								begin
									rv16InRamAddr				<= ((rv8RowCnt+1)*pImageWidth)+ (rv8ColmCnt);
								
									if(((rv8RowCnt+1) < pImageHight) && (rv8ColmCnt >= 1)) // (i+1, j-1)
										rv9x8WindowArray[6]		<= wv8ImageReadData;
									else
										rv9x8WindowArray[6]		<= 8'd0;
								end				
									
							4'd7:
								begin
									rv16InRamAddr				<= ((rv8RowCnt+1)*pImageWidth)+ (rv8ColmCnt+1);
									
									if((rv8RowCnt+1) < pImageHight) // (i+1, j)
										rv9x8WindowArray[7]		<= wv8ImageReadData;
									else
										rv9x8WindowArray[7]		<= 8'd0;
								end		
							
								
							4'd8:
								begin
									rv2ImageState				<= State2;
									
									if(((rv8RowCnt+1) < pImageHight) && ((rv8ColmCnt+1) < pImageWidth)) // (i+1, j+1)
										rv9x8WindowArray[8]		<= wv8ImageReadData;
									else
										rv9x8WindowArray[8]		<= 8'd0;
								end	
							default:rv2ImageState				<= State1;
						endcase
					
					end
					
				State2:
					begin
						if(rv8ColmCnt >= (pImageWidth-1))
						begin
							rv8RowCnt				<=rv8RowCnt+1;
						end
							
						rv8ColmCnt				<=rv8ColmCnt+1;
						rDataValid				<= 1'b1;
						rv4ReadCnt				<= 4'd0;
						rv2ImageState			<= State3;
					end
					
				State3:
					begin
						rDataValid				<= 1'b0;
						rv16InRamAddr			<= (rv8RowCnt*pImageWidth) + rv8ColmCnt;
						
						if(wPixelValid )
						begin
							rv16OutRamWrAddr		<= rv16OutRamWrAddr + 1;
							rv2ImageState		<= State1;
							
							if(!rOneRndProcessDone)
							begin
								ImageOutRam[rv16OutRamWrAddr] <= wv8ValidPixel;
							end
						end
						else
						begin
							rv2ImageState		<= State3;
						end
						
						if(rv16OutRamWrAddr >= 65530)
							rOneRndProcessDone	<= 1'b1;
					end
				default:  rv2ImageState		<= State1;
			endcase
		end// endif
	end //end always

//***********************************************************************//
//End Image prcessing
//***********************************************************************//	



//***************************************************************************//
//Image display logic
//****************************************************************************//

	wire clk_33Mhz, blank_n;
    
	assign MTL2_BL_ON_n = 1'b0;     // Enable the backlight
	
	// PLL 50MHz to 33MHz
    sys_pll	sys_pll_inst (
        .inclk0 ( MAX10_CLK1_50 ),
        .c0 ( clk_33Mhz )
    );
	
    // Connect the LCD's pixel clock to the PLL's 33MHz clock
	assign MTL2_DCLK = clk_33Mhz;
	
	// Generate the synchronization signals
	sync_gen sync (
        .clk(clk_33Mhz),
        .rst_n((!SW[0] & rOneRndProcessDone)),
        .hsync(MTL2_HSD),
        .vsync(MTL2_VSD),
        .blank_n(blank_n)
    );

//*********************************************	
// color generation
//********************************************
  
//wire [7:0] wv8red, wv8green, wv8blue;

// The bottom six bits will always be high
// assign red = (blank_n) 		? {red_cnt, 6'b111111} : 8'b0;
// assign green = (blank_n) 	? {green_cnt, 6'b111111} : 8'b0;
// assign blue = (blank_n) 	? {blue_cnt, 6'b111111} : 8'b0;

assign MTL2_R = (blank_n & (!wDrvZero) ) 		? ImageReadData 	: 8'b0;
assign MTL2_G = (blank_n & (!wDrvZero) ) 		? ImageReadData 	: 8'b0; 
assign MTL2_B = (blank_n & (!wDrvZero) ) 		? ImageReadData 	: 8'b0;	

// assign	oRed		= wDrvZero ?  8'd0 : ImageReadData ;
// assign	oBlue		= wDrvZero ?  8'd0 : ImageReadData ; 
// assign	oGreen		= wDrvZero ?  8'd0 : ImageReadData ;


//*********************************************	
// Image reader
//********************************************
localparam TOTAL_COLS  = 1056;
localparam TOTAL_ROWS  = 525;
localparam ACTIVE_COLS = 800;
localparam ACTIVE_ROWS = 480;


localparam	pHFPorchCnt		= 210;	
localparam	pHBPorchCnt		= 16;	
localparam	pHSyncPulse		= 30;

//Vertical timings
localparam	pVFPorchCnt		= 22;	
localparam	pVBPorchCnt		= 10;	
localparam	pVSyncPulse		= 13;

localparam	pPorchData		= 8'd0;
localparam	pSyncPulseData	= 8'd0;

//Signal declaration
reg [10:0]	rv10Hcount;
reg [10:0]	rv10Vcount;
wire		wBlueOn;
wire		wRedOn;
wire		wGreenOn;
wire		wDrvZero;
wire		wDrvBlank;
wire		iRst_L;
reg [15:0] 	rv16OutRamRdAddr;
wire [7:0] ImageReadData;
reg			rDrvPixel;
reg			rLoadPixCnt;
reg			rDuplicateRow;

	
//assign	wDrvZero	= (rv10Vcount <= 190 ) | (rv10Vcount >= 319 ) | (rv10Hcount <= 591 ) | (rv10Hcount >= 720) ; // Drive zero during Vertical and Horizontal front and back porch
assign	wDrvZero	= (rv10Vcount <= 62 ) | (rv10Vcount >= 319 ) | (rv10Hcount <= 463 ) | (rv10Hcount >= 720) ; // Drive zero during Vertical and Horizontal front and back porch
assign  iRst_L = !SW[0];

assign  ImageReadData = ImageOutRam[rv16OutRamRdAddr];

always @ (posedge clk_33Mhz or negedge iRst_L or negedge rOneRndProcessDone)
begin
	if((iRst_L == 1'b0) | (rOneRndProcessDone == 1'b0))
	begin
		rv10Hcount		<= 10'd0;
	end
	else
	begin
		if(rv10Hcount == (TOTAL_COLS -1) )
			rv10Hcount		<= 10'd0;
		else
			rv10Hcount		<= rv10Hcount + 1'd1;
	end
end
	
always @ (posedge clk_33Mhz or negedge iRst_L or negedge rOneRndProcessDone )
begin
	if((iRst_L == 1'b0) | (rOneRndProcessDone == 1'b0))
	begin
		rv10Vcount		<= 10'd0;
	end
	else
	begin
		if ( (rv10Vcount == (TOTAL_ROWS -1)) && (rv10Hcount == (TOTAL_COLS -1)) )
			rv10Vcount		<= 10'd0;
			
		else if(rv10Hcount == (TOTAL_COLS -1) )
			rv10Vcount		<= rv10Vcount + 1'd1; 
	end
end	

always @ (posedge clk_33Mhz or negedge iRst_L or negedge rOneRndProcessDone )
begin
	if((iRst_L == 1'b0) | (rOneRndProcessDone == 1'b0))
	begin
		rv16OutRamRdAddr			<= 16'd0;
	end
	else
	begin
		if ( rv10Vcount == (TOTAL_ROWS -1))
		begin
			rv16OutRamRdAddr	<= 16'd0;
		end
			
		else if ( !wDrvZero)
		begin
			rv16OutRamRdAddr		<= rv16OutRamRdAddr + 1'd1;
		end
		
		// if(!wDrvZero)
			// rDrvPixel			<= ~rDrvPixel;
		// else
			// rDrvPixel			<= 1'b1;
	end
end	


endmodule
