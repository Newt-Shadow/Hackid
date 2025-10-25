.class public Lcom/arthenica/ffmpegkit/ReturnCode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CANCEL:I = 0xff

.field public static SUCCESS:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/arthenica/ffmpegkit/ReturnCode;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static isCancel(Lcom/arthenica/ffmpegkit/ReturnCode;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/ReturnCode;->getValue()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    sget v0, Lcom/arthenica/ffmpegkit/ReturnCode;->CANCEL:I

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public static isSuccess(Lcom/arthenica/ffmpegkit/ReturnCode;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/ReturnCode;->getValue()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    sget v0, Lcom/arthenica/ffmpegkit/ReturnCode;->SUCCESS:I

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arthenica/ffmpegkit/ReturnCode;->value:I

    .line 2
    .line 3
    return v0
.end method

.method public isValueCancel()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/arthenica/ffmpegkit/ReturnCode;->value:I

    .line 2
    .line 3
    sget v1, Lcom/arthenica/ffmpegkit/ReturnCode;->CANCEL:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isValueError()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/arthenica/ffmpegkit/ReturnCode;->value:I

    .line 2
    .line 3
    sget v1, Lcom/arthenica/ffmpegkit/ReturnCode;->SUCCESS:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    sget v1, Lcom/arthenica/ffmpegkit/ReturnCode;->CANCEL:I

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isValueSuccess()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/arthenica/ffmpegkit/ReturnCode;->value:I

    .line 2
    .line 3
    sget v1, Lcom/arthenica/ffmpegkit/ReturnCode;->SUCCESS:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/arthenica/ffmpegkit/ReturnCode;->value:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
