.class public Ld/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b$c;,
        Ld/b$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ld/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Z

.field final b:Landroid/os/Handler;

.field c:Ld/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Ld/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld/b;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ld/b;->a:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Ld/b;->b:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Ld/a$a;->a(Landroid/os/IBinder;)Ld/a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Ld/b;->c:Ld/a;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method protected a(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p2, p0, Ld/b;->c:Ld/a;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    new-instance p2, Ld/b$b;

    .line 7
    .line 8
    invoke-direct {p2, p0}, Ld/b$b;-><init>(Ld/b;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Ld/b;->c:Ld/a;

    .line 12
    .line 13
    :cond_0
    iget-object p2, p0, Ld/b;->c:Ld/a;

    .line 14
    .line 15
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 20
    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p1
.end method
