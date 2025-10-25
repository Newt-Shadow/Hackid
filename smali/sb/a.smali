.class public abstract Lsb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsb/a$a;
    }
.end annotation


# static fields
.field public static final a:Lsb/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lsb/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsb/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsb/a;->a:Lsb/a$a;

    return-void
.end method
