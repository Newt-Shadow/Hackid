.class Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arthenica/ffmpegkit/FFmpegKitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SAFProtocolUrl"
.end annotation


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final openMode:Ljava/lang/String;

.field private parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final safId:Ljava/lang/Integer;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->safId:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->uri:Landroid/net/Uri;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->openMode:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->contentResolver:Landroid/content/ContentResolver;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->contentResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpenMode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->openMode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSafId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->safId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->uri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    return-void
.end method
