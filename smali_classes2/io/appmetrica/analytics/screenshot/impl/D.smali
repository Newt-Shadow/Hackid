.class public final Lio/appmetrica/analytics/screenshot/impl/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lio/appmetrica/analytics/screenshot/impl/C;


# instance fields
.field public final a:Lio/appmetrica/analytics/screenshot/impl/x;

.field public final b:Lio/appmetrica/analytics/screenshot/impl/F;

.field public final c:Lio/appmetrica/analytics/screenshot/impl/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/C;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/C;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/appmetrica/analytics/screenshot/impl/D;->CREATOR:Lio/appmetrica/analytics/screenshot/impl/C;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/screenshot/impl/h0;)V
    .locals 4

    .line 5
    invoke-virtual {p1}, Lio/appmetrica/analytics/screenshot/impl/h0;->a()Lio/appmetrica/analytics/screenshot/impl/e0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lio/appmetrica/analytics/screenshot/impl/x;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/screenshot/impl/x;-><init>(Lio/appmetrica/analytics/screenshot/impl/e0;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 6
    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/screenshot/impl/h0;->c()Lio/appmetrica/analytics/screenshot/impl/i0;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v3, Lio/appmetrica/analytics/screenshot/impl/F;

    invoke-direct {v3, v0}, Lio/appmetrica/analytics/screenshot/impl/F;-><init>(Lio/appmetrica/analytics/screenshot/impl/i0;)V

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 7
    :goto_1
    invoke-virtual {p1}, Lio/appmetrica/analytics/screenshot/impl/h0;->b()Lio/appmetrica/analytics/screenshot/impl/f0;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/z;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/screenshot/impl/z;-><init>(Lio/appmetrica/analytics/screenshot/impl/f0;)V

    .line 8
    :cond_2
    invoke-direct {p0, v2, v3, v1}, Lio/appmetrica/analytics/screenshot/impl/D;-><init>(Lio/appmetrica/analytics/screenshot/impl/x;Lio/appmetrica/analytics/screenshot/impl/F;Lio/appmetrica/analytics/screenshot/impl/z;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/screenshot/impl/x;Lio/appmetrica/analytics/screenshot/impl/F;Lio/appmetrica/analytics/screenshot/impl/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/D;->a:Lio/appmetrica/analytics/screenshot/impl/x;

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/screenshot/impl/D;->b:Lio/appmetrica/analytics/screenshot/impl/F;

    .line 4
    iput-object p3, p0, Lio/appmetrica/analytics/screenshot/impl/D;->c:Lio/appmetrica/analytics/screenshot/impl/z;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/screenshot/impl/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/D;->a:Lio/appmetrica/analytics/screenshot/impl/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lio/appmetrica/analytics/screenshot/impl/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/D;->c:Lio/appmetrica/analytics/screenshot/impl/z;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lio/appmetrica/analytics/screenshot/impl/F;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/D;->b:Lio/appmetrica/analytics/screenshot/impl/F;

    .line 2
    .line 3
    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ParcelableScreenshotConfig(apiCaptorConfig="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/D;->a:Lio/appmetrica/analytics/screenshot/impl/x;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", serviceCaptorConfig="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/D;->b:Lio/appmetrica/analytics/screenshot/impl/F;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", contentObserverCaptorConfig="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/D;->c:Lio/appmetrica/analytics/screenshot/impl/z;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x29

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/D;->a:Lio/appmetrica/analytics/screenshot/impl/x;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/D;->b:Lio/appmetrica/analytics/screenshot/impl/F;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/D;->c:Lio/appmetrica/analytics/screenshot/impl/z;

    .line 12
    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
