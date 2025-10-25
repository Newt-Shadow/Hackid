.class public abstract Lsb/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsb/d$a;
    }
.end annotation


# static fields
.field public static final a:Lsb/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lsb/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsb/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsb/d;->a:Lsb/d$a;

    return-void
.end method
