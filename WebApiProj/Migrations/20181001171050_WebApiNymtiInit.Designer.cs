﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using WebApiNymti.Data;

namespace WebApiNymti.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20181001171050_WebApiNymtiInit")]
    partial class WebApiNymtiInit
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.1.0-rtm-30799")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRole", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<string>("Name")
                        .HasMaxLength(256);

                    b.Property<string>("NormalizedName")
                        .HasMaxLength(256);

                    b.HasKey("Id");

                    b.HasIndex("NormalizedName")
                        .IsUnique()
                        .HasName("RoleNameIndex")
                        .HasFilter("[NormalizedName] IS NOT NULL");

                    b.ToTable("AspNetRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<string>("RoleId")
                        .IsRequired();

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetRoleClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<string>("UserId")
                        .IsRequired();

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.Property<string>("LoginProvider");

                    b.Property<string>("ProviderKey");

                    b.Property<string>("ProviderDisplayName");

                    b.Property<string>("UserId")
                        .IsRequired();

                    b.HasKey("LoginProvider", "ProviderKey");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserLogins");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.Property<string>("UserId");

                    b.Property<string>("RoleId");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetUserRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.Property<string>("UserId");

                    b.Property<string>("LoginProvider");

                    b.Property<string>("Name");

                    b.Property<string>("Value");

                    b.HasKey("UserId", "LoginProvider", "Name");

                    b.ToTable("AspNetUserTokens");
                });

            modelBuilder.Entity("WebApiNymti.Models.Entities.AppUser", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("AccessFailedCount");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<string>("Email")
                        .HasMaxLength(256);

                    b.Property<bool>("EmailConfirmed");

                    b.Property<bool>("LockoutEnabled");

                    b.Property<DateTimeOffset?>("LockoutEnd");

                    b.Property<string>("NormalizedEmail")
                        .HasMaxLength(256);

                    b.Property<string>("NormalizedUserName")
                        .HasMaxLength(256);

                    b.Property<string>("PasswordHash");

                    b.Property<string>("PhoneNumber");

                    b.Property<bool>("PhoneNumberConfirmed");

                    b.Property<string>("SecurityStamp");

                    b.Property<bool>("TwoFactorEnabled");

                    b.Property<string>("UserName")
                        .HasMaxLength(256);

                    b.Property<long?>("facebookid");

                    b.Property<string>("firstname");

                    b.Property<string>("lastname");

                    b.Property<string>("pictureurl");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedEmail")
                        .HasName("EmailIndex");

                    b.HasIndex("NormalizedUserName")
                        .IsUnique()
                        .HasName("UserNameIndex")
                        .HasFilter("[NormalizedUserName] IS NOT NULL");

                    b.ToTable("AspNetUsers");
                });

            modelBuilder.Entity("WebApiNymti.Models.Entities.Content", b =>
                {
                    b.Property<int>("ContentId")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("ContentText");

                    b.Property<int>("GroupsId");

                    b.HasKey("ContentId");

                    b.HasIndex("GroupsId");

                    b.ToTable("Contents");

                    b.HasData(
                        new { ContentId = 1, ContentText = "Tannehill has quietly gotten 9.3 YPA with seven TD passes this season and should have to throw more than usual as underdogs against a New England team coming off back-to-back losses.", GroupsId = 1 },
                        new { ContentId = 2, ContentText = "After holing a birdie putt early in his afternoon foursomes, McIlroy turned angrily to one spectator who had questioned his technique and shouted: Who can't putt? Who can't putt ? I can putt.I can putt.F * *****come on!", GroupsId = 1 },
                        new { ContentId = 3, ContentText = "SAINT-QUENTIN-EN-YVELINES, France — The big rumor here Friday morning was that Phil Mickelson would not play at all. Mickelson has had a lousy end to the year. Lately, his tee shots seem to land everywhere but the fairway. And as the morning matches began and Mickelson rode near the first tee in a golf cart with wife Amy in his lap, the best chance to play him had already vanished.", GroupsId = 1 },
                        new { ContentId = 4, ContentText = "The world’s top collectors in 2018—among whose recent acquisitions are a 2011 “Coca-Cola” work by Danh Vo and Arthur Jafa’s widely acclaimed Love Is the Message, The Message Is Death (2016)—include newcomers like Laurene Powell Jobs, the founder of Emerson Collective, a social justice organization, and widow of Steve Jobs; Elizabeth and Phillip Chun, founders of the art-filled resort Paradise City in Incheon, South Korea; philanthropist Suzanne Deal Booth, who recently joined forces with fellow “Top 200” collectors Amanda and Glenn R. Fuhrman to jointly fund an $800,000 artist prize; and two executives from Grupo Televisa, Alfonso de Angoitia Noriega and Bernardo Gómez Martínez.", GroupsId = 2 },
                        new { ContentId = 5, ContentText = "It’s late on a Friday, but some big news just landed in the old ARTnews inbox: the Bronx Museum of the Arts is planning what it’s calling an “artist workspace and exhibition venue” at 80 White Street in the Tribeca section of Lower Manhattan. Slated to open next year, the new location, which measures a hearty 4,500 square feet, will be in the heart of an arts area that has grown rapidly in recent years. Artists Space is working on a major new space, and dealers like Postmasters, Alexander & Bonin, Queer Thoughts, and Bortolami have also set up shop close by.", GroupsId = 2 },
                        new { ContentId = 6, ContentText = "Today’s show: “Maia Cruz Palileo: The Way Back” is on view at Taymour Grahne in London through Sunday, October 7. The solo exhibition, which is the second iteration of the gallery’s nomadic exhibition platform—located now at 93 Piccadilly—presents new work by the New York–based artist.", GroupsId = 2 },
                        new { ContentId = 7, ContentText = "Politics Back to business: The SEC is off Elon Musk's back. Now he and Tesla can return to that other pesky problem — making and selling cars.", GroupsId = 3 },
                        new { ContentId = 8, ContentText = "Washington (CNN)The FBI investigation into allegations against Supreme Court nominee Brett Kavanaugh is narrowly focused, top officials said in interviews on Sunday, with sources telling CNN that the White House is controlling the scope of the probe.", GroupsId = 3 },
                        new { ContentId = 9, ContentText = "The United States sailed a warship close to disputed islands in the South China Sea on Sunday, a move that is bound to draw the ire of Beijing and comes amid heightened US-China tensions over a broad range of issues.", GroupsId = 3 }
                    );
                });

            modelBuilder.Entity("WebApiNymti.Models.Entities.Groups", b =>
                {
                    b.Property<int>("GroupsId")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("GroupsTitle")
                        .IsRequired();

                    b.HasKey("GroupsId");

                    b.ToTable("Groups");

                    b.HasData(
                        new { GroupsId = 1, GroupsTitle = "Sport" },
                        new { GroupsId = 2, GroupsTitle = "Art" },
                        new { GroupsId = 3, GroupsTitle = "Politics" }
                    );
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole")
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.HasOne("WebApiNymti.Models.Entities.AppUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.HasOne("WebApiNymti.Models.Entities.AppUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole")
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("WebApiNymti.Models.Entities.AppUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.HasOne("WebApiNymti.Models.Entities.AppUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("WebApiNymti.Models.Entities.Content", b =>
                {
                    b.HasOne("WebApiNymti.Models.Entities.Groups")
                        .WithMany("Contents")
                        .HasForeignKey("GroupsId")
                        .OnDelete(DeleteBehavior.Cascade);
                });
#pragma warning restore 612, 618
        }
    }
}
