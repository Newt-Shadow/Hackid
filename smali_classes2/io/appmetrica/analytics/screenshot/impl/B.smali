.class public final Lio/appmetrica/analytics/screenshot/impl/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lio/appmetrica/analytics/screenshot/impl/A;


# instance fields
.field public final a:Z

.field public final b:Lio/appmetrica/analytics/screenshot/impl/D;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/A;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/A;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/appmetrica/analytics/screenshot/impl/B;->CREATOR:Lio/appmetrica/analytics/screenshot/impl/A;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/screenshot/impl/g0;)V
    .locals 2

    .line 4
    invoke-virtual {p1}, Lio/appmetrica/analytics/screenshot/impl/g0;->b()Z

    move-result v0

    .line 5
    invoke-virtual {p1}, Lio/appmetrica/analytics/screenshot/impl/g0;->a()Lio/appmetrica/analytics/screenshot/impl/h0;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/D;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/screenshot/impl/D;-><init>(Lio/appmetrica/analytics/screenshot/impl/h0;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/screenshot/impl/B;-><init>(ZLio/appmetrica/analytics/screenshot/impl/D;)V

    return-void
.end method

.method public constructor <init>(ZLio/appmetrica/analytics/screenshot/impl/D;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lio/appmetrica/analytics/screenshot/impl/B;->a:Z

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/screenshot/impl/B;->b:Lio/appmetrica/analytics/screenshot/impl/D;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/screenshot/impl/D;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/B;->b:Lio/appmetrica/analytics/screenshot/impl/D;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/appmetrica/analytics/screenshot/impl/B;->a:Z

    .line 2
    .line 3
    return v0
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
    const-string v1, "ParcelableRemoteScreenshotConfig(enabled="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lio/appmetrica/analytics/screenshot/impl/B;->a:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", config="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/B;->b:Lio/appmetrica/analytics/screenshot/impl/D;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x29

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/appmetrica/analytics/screenshot/impl/B;->a:Z

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/B;->b:Lio/appmetrica/analytics/screenshot/impl/D;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
